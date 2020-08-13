import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/application/music/music_hub/music_hub_cubit.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/domain/active_exercise/models/sub_models/exercise_perform_type.dart';
import 'package:fitnick/domain/active_exercise/models/sub_models/exercise_set.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "../../core/helpers/list_extension.dart";
part 'active_workout_runner_state.dart';
part 'active_workout_runner_cubit.freezed.dart';

class ActiveWorkoutRunnerCubit extends Cubit<ActiveWorkoutRunnerState> {
  static FlutterTts tts = FlutterTts();
  StreamSubscription<int> _spentTimer;
  StreamSubscription<int> _performTimer;
  StreamSubscription<int> _restTimer;
  StreamSubscription<int> _warmUpTimer;
  final MusicHubCubit musicHubCubit;
  ActiveWorkoutRunnerCubit({@required this.musicHubCubit})
      : super(ActiveWorkoutRunnerState.initial()) {
    tts.setStartHandler(() {
      musicHubCubit.changeVolume(0.3);
    });

    tts.setCompletionHandler(() {
      musicHubCubit.maxVolume();
    });
  }

  Future<void> _say(String anything) async {
    if (state.voiceEnabled) {
      await tts.speak(anything);
    }
  }

  //? Timers Here =========================================

  void _startWarmUpTimer() {
    _cancelWarmUpTimer();
    final maxCount = 6;
    _warmUpTimer = Stream.periodic(Duration(seconds: 1), (i) => i)
        .take(maxCount)
        .listen((value) {
      final tick = maxCount - value;
      _onWarmUpContinue(tick - 1);
    }, onDone: _onWarmUpComplete);
  }

  void _cancelWarmUpTimer() {
    _warmUpTimer?.cancel();
  }

  void _startRestTimer() {
    if (state.isCompleted) {
      return;
    }
    _cancelRestTimer();
    state.activeWorkoutOption.fold(() => null, (activeWorkout) {
      final activeExercise =
          activeWorkout.activeExercises[state.currentActiveExerciseIndex];
      final exerciseSet = activeExercise.sets[state.currentSetIndex];
      final totalRest = exerciseSet.rest;
      _onRestContinue(totalRest);
      _restTimer = Stream.periodic(Duration(seconds: 1), (i) => i)
          .take(totalRest)
          .listen((_) {
        _onRestContinue(state.currentRest.inSeconds - 1);
      }, onDone: _onRestComplete);
    });
  }

  void _resetRestTimer() {
    emit(state.copyWith(isResting: false, currentRest: Duration(seconds: 0)));
    _restTimer?.cancel();
  }

  void _cancelRestTimer() {
    _restTimer?.cancel();
  }

  void _startPerformTimer() {
    if (state.isCompleted || state.isPaused) {
      return;
    }
    _cancelPerformTimer();
    state.activeWorkoutOption.fold(() => null, (activeWorkout) {
      final activeExercise =
          activeWorkout.activeExercises[state.currentActiveExerciseIndex];
      final exerciseSet = activeExercise.sets[state.currentSetIndex];
      final initialCount = state.currentPerformedCount;
      final endCount = exerciseSet.performCount - (initialCount - 1);
      final actualTempo = activeExercise.performTempo(exerciseSet.performType);
      sayAboutExercise(activeExercise, exerciseSet);
      _performTimer = Stream.periodic(
              Duration(seconds: actualTempo), (i) => i + initialCount)
          .take(endCount)
          .listen((tick) {
        _onPerformContinue(tick + 1);
      }, onDone: _onPerformComplete);
    });
  }

  void _resetPerformTimer() {
    emit(state.copyWith(currentPerformedCount: 1));
    _performTimer?.cancel();
  }

  void _pausePerformTimer() {
    _performTimer?.cancel();
  }

  void _cancelPerformTimer() {
    _performTimer?.cancel();
  }

  void _cancelAllTimer() {
    _resetRestTimer();
    _resetPerformTimer();
    _cancelSpentTimer();
    _cancelWarmUpTimer();
  }

  void _startSpentTimer() {
    _cancelSpentTimer();
    _spentTimer = Stream.periodic(
        Duration(
          seconds: 1,
        ),
        (i) => i + 1).listen((_) {
      emit(state.copyWith(
          totalTimeSpent:
              Duration(seconds: state.totalTimeSpent.inSeconds + 1)));
    });
  }

  void _pauseSpentTimer() {
    _spentTimer?.cancel();
  }

  void _cancelSpentTimer() {
    _spentTimer?.cancel();
  }

  //? Timer Functions ends here =========================================

  void sayAboutExercise(
      ActiveExercise activeExercise, ExerciseSet exerciseSet) async {
    final type = exerciseSet.performType == ExercisePerformType.secs
        ? "seconds"
        : "Reps";
    final word =
        "exercise started ${activeExercise.exercise.name.safeValue} ${exerciseSet.performCount} $type";
    await _say(word);
  }

  void _onWarmUpContinue(int count) {
    _say("$count");
  }

  void _onWarmUpComplete() {
    _startPerformTimer();
  }

  void _onRestContinue(int seconds) {
    emit(state.copyWith(
        isResting: true, currentRest: Duration(seconds: seconds)));
  }

  void _onRestComplete() {
    _say("Get Ready");
    _resetRestTimer();
    _autoNext();
  }

  void _onPerformContinue(int count) {
    emit(state.copyWith(currentPerformedCount: count));
  }

  void _onPerformComplete() {
    _cancelWarmUpTimer();
    _say("take a rest");
    _resetPerformTimer();
    _startRestTimer();
  }

  void _autoNext() {
    _continueNextStep();
    if (!state.isCompleted) {
      _startWarmUpTimer();
    }
  }

  void _breakNatureFlow() {
    pause();
    _resetPerformTimer();
  }

  void _continueNextStep() {
    state.activeWorkoutOption.fold(() => null, (activeWorkout) {
      final hasNextSet = activeWorkout
          .activeExercises[state.currentActiveExerciseIndex].sets
          .hasNext(state.currentSetIndex);
      if (hasNextSet) {
        _goNextSet();
      } else {
        final hasNextExercise = activeWorkout.activeExercises
            .hasNext(state.currentActiveExerciseIndex);
        if (hasNextExercise) {
          _goNextExercise();
        } else {
          stop();
          _say("Congratulation Workout completed");
        }
      }
    });
  }

  void _goNextSet() {
    state.activeWorkoutOption.fold(() => null, (activeWorkout) {
      final hasNextSet = activeWorkout
          .activeExercises[state.currentActiveExerciseIndex].sets
          .hasNext(state.currentSetIndex);
      if (hasNextSet) {
        emit(state.copyWith(currentSetIndex: state.currentSetIndex + 1));
      }
    });
  }

  void _goPreviousExercise() {
    state.activeWorkoutOption.fold(() => null, (activeWorkout) {
      final hasPreviousExercise = activeWorkout.activeExercises
          .hasPrevious(state.currentActiveExerciseIndex);
      if (hasPreviousExercise) {
        emit(state.copyWith(
            currentSetIndex: 0,
            currentActiveExerciseIndex: state.currentActiveExerciseIndex - 1));
      }
    });
  }

  void _goNextExercise() {
    state.activeWorkoutOption.fold(() => null, (activeWorkout) {
      final hasNextExercise = activeWorkout.activeExercises
          .hasNext(state.currentActiveExerciseIndex);
      if (hasNextExercise) {
        emit(state.copyWith(
            currentSetIndex: 0,
            currentActiveExerciseIndex: state.currentActiveExerciseIndex + 1));
      }
    });
  }

  //! events =================================================
  void toggleVoice() {
    emit(state.copyWith(voiceEnabled: !state.voiceEnabled));
  }

  void init(ActiveWorkout activeWorkout) {
    emit(state.copyWith(
        activeWorkoutOption: Some(activeWorkout),
        isCompleted: activeWorkout.activeExercises.isEmpty));
  }

  void skipRest() {
    _onRestComplete();
  }

  void skipExercise() {
    if (state.isPaused) {
      emit(state.copyWith(isPaused: false));
    }
    _onPerformComplete();
  }

  void goBack() {
    _breakNatureFlow();
    _goPreviousExercise();
  }

  void goFront() {
    _breakNatureFlow();
    _goNextExercise();
  }

  void play() {
    emit(state.copyWith(isPaused: false));
    _startSpentTimer();
    _startWarmUpTimer();
  }

  void pause() {
    emit(state.copyWith(isPaused: true));
    _pauseSpentTimer();
    _pausePerformTimer();
  }

  void stop() {
    emit(state.copyWith(isCompleted: true));
  }

  @override
  Future<void> close() {
    _cancelAllTimer();
    return super.close();
  }
}
