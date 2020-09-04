import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/application/active_workout/active_workout_hub/active_workout_hub_cubit.dart';
import 'package:fitnick/application/music/music_hub/music_hub_cubit.dart';
import 'package:fitnick/domain/active_exercise/facade/i_active_exercise_facade.dart';
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
  final IActiveExerciseFacade activeExerciseFacade;
  final ActiveWorkoutHubCubit activeWorkoutHubCubit;
  static FlutterTts tts = FlutterTts();
  StreamSubscription<int> _spentTimer;
  StreamSubscription<int> _performTimer;
  StreamSubscription<int> _restTimer;
  StreamSubscription<int> _warmUpTimer;
  StreamSubscription<ActiveWorkoutHubState> _workoutHubListener;
  final MusicHubCubit musicHubCubit;

  ActiveWorkoutRunnerCubit(
      {@required this.musicHubCubit,
      @required this.activeExerciseFacade,
      @required this.activeWorkoutHubCubit})
      : super(ActiveWorkoutRunnerState.initial()) {
    tts.setStartHandler(() {
      musicHubCubit.changeVolume(0.3);
    });

    tts.setCompletionHandler(() {
      musicHubCubit.maxVolume();
    });
  }

  //? Speaking Sentences
  //?---------------------------------------------------

  Future<void> _say(String anything) async {
    if (state.voiceEnabled) {
      await tts.speak(anything);
    }
  }

  void _sayToTakeRest() {
    _say("take a rest");
  }

  void _sayWhenWorkoutCompleted() {
    _say("Congratulation Workout Completed");
  }

  void _sayToGetReady() {
    _say("Get Ready");
  }

  void _sayAboutExerciseStarted(
      ActiveExercise activeExercise, ExerciseSet exerciseSet) async {
    final type = exerciseSet.performType == ExercisePerformType.secs
        ? "seconds"
        : "Reps";
    final word =
        "exercise started ${activeExercise.exercise.name.safeValue} ${exerciseSet.performCount} $type";
    await _say(word);
  }

  //? Timers Here =========================================

  void _cancelAllTimer() {
    _resetRestTimer();
    _resetPerformTimer();
    _cancelSpentTimer();
    _cancelWarmUpTimer();
  }

  //!Warm Up Timer
  //!==========================================

  void _startWarmUpTimer() {
    _cancelWarmUpTimer();
    final maxCount = 6;
    _warmUpTimer = Stream.periodic(Duration(seconds: 1), (i) => i)
        .take(maxCount)
        .listen((value) {
      final tick = maxCount - value;
      _onWarmUpTick(tick - 1);
    }, onDone: _onWarmUpDone);
  }

  void _cancelWarmUpTimer() {
    _warmUpTimer?.cancel();
  }

  void _onWarmUpTick(int count) {
    _say("$count");
  }

  void _onWarmUpDone() {
    _startPerformTimer();
  }

  //!Perform Timer
  //!====================================================

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
      _sayAboutExerciseStarted(activeExercise, exerciseSet);
      if (exerciseSet.performType == ExercisePerformType.reps) {
        return;
      }
      _performTimer = Stream.periodic(
              Duration(seconds: actualTempo), (i) => i + initialCount)
          .take(endCount)
          .listen((tick) {
        _onPerformTick(tick + 1);
      }, onDone: _onPerformDone);
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

  void _onPerformTick(int count) {
    emit(state.copyWith(currentPerformedCount: count));
  }

  void _onPerformDone() {
    _cancelWarmUpTimer();
    _resetPerformTimer();
    skipExercise();
  }

  //! Rest Timer
  //!========================================

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
      _onRestTick(totalRest);
      _restTimer = Stream.periodic(Duration(seconds: 1), (i) => i)
          .take(totalRest)
          .listen((_) {
        _onRestTick(state.currentRest.inSeconds - 1);
      }, onDone: _onRestDone);
    });
  }

  void _resetRestTimer() {
    emit(state.copyWith(isResting: false, currentRest: Duration(seconds: 0)));
    _restTimer?.cancel();
  }

  void _cancelRestTimer() {
    _restTimer?.cancel();
  }

  void _onRestTick(int seconds) {
    emit(state.copyWith(
        isResting: true, currentRest: Duration(seconds: seconds)));
  }

  void _onRestDone() {
    skipRest();
  }

  //! Spent Timer
  //!==========================================

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

  void _cancelSpentTimer() {
    _spentTimer?.cancel();
  }

  //? Timer Functions ends here
  //?---------------------------------------------------

  //?==============================================================

  //? Helper Function started
  //?---------------------------------------------------

  void _startTakingRest() {
    _sayToTakeRest();
    emit(state.copyWith(isResting: true));
    _startRestTimer();
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
        _changeToNextSet();
        play();
      } else {
        final hasNextExercise = activeWorkout.activeExercises
            .hasNext(state.currentActiveExerciseIndex);
        if (hasNextExercise) {
          _changeToNextExercise();
          play();
        } else {
          _sayWhenWorkoutCompleted();
          stop();
        }
      }
    });
  }

  void _changeToNextSet() {
    state.activeWorkoutOption.fold(() => null, (activeWorkout) {
      final hasNextSet = activeWorkout
          .activeExercises[state.currentActiveExerciseIndex].sets
          .hasNext(state.currentSetIndex);
      if (hasNextSet) {
        emit(state.copyWith(currentSetIndex: state.currentSetIndex + 1));
      }
    });
  }

  void _changeToPreviousExercise() {
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

  void _changeToNextExercise() {
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

  void _updateActiveExerciseSetReps(int reps) async {
    await state.activeWorkoutOption.fold(() => null, (activeWorkout) async {
      final activeExercise =
          activeWorkout.activeExercises[state.currentActiveExerciseIndex];
      final exerciseSet = activeExercise.sets[state.currentSetIndex];

      final newSets = [...activeExercise.sets];
      newSets[state.currentSetIndex] = exerciseSet.copyWith(performCount: reps);

      final newActiveExercise = activeExercise.copyWith(sets: newSets);

      final either = await activeExerciseFacade.update(newActiveExercise);
      either.fold((l) => print(l), (r) => activeWorkoutHubCubit.refreshed());
    });
  }

  //? Helper Funtion End
  //?---------------------------------------------------

  //! events =================================================
  void toggleVoice() {
    emit(state.copyWith(voiceEnabled: !state.voiceEnabled));
  }

  void init(ActiveWorkout activeWorkout) {
    emit(state.copyWith(
        activeWorkoutOption: Some(activeWorkout),
        isPaused: true,
        isCompleted: activeWorkout.activeExercises.isEmpty));
    _workoutHubListener = activeWorkoutHubCubit.listen((hubState) {
      hubState.maybeWhen(
          orElse: () {},
          loaded: (activeWorkoutList) {
            final newActiveWorkout = optionOf(activeWorkoutList.firstWhere(
                (w) => w.id == activeWorkout.id,
                orElse: () => null));
            emit(state.copyWith(activeWorkoutOption: newActiveWorkout));
          });
    });
  }

  void skipRest() {
    _resetRestTimer();
    _sayToGetReady();
    _continueNextStep();
  }

  void skipExercise() {
    _breakNatureFlow();
    state.activeWorkoutOption.fold(() => null, (activeWorkout) {
      final activeExercise =
          activeWorkout.activeExercises[state.currentActiveExerciseIndex];
      final exerciseSet = activeExercise.sets[state.currentSetIndex];
      if (exerciseSet.performType == ExercisePerformType.reps) {
        emit(state.copyWith(isLoggingReps: true));
      } else {
        _startTakingRest();
      }
    });
  }

  void goBack() {
    _breakNatureFlow();
    _changeToPreviousExercise();
  }

  void goFront() {
    _breakNatureFlow();
    _changeToNextExercise();
  }

  void logReps(int reps) {
    _updateActiveExerciseSetReps(reps);
    skipLogReps();
  }

  void skipLogReps() {
    emit(state.copyWith(isLoggingReps: false));
    _startTakingRest();
  }

  void play() {
    emit(state.copyWith(isPaused: false));
    if (_spentTimer == null) {
      _startSpentTimer();
    }
    _startWarmUpTimer();
  }

  void pause() {
    emit(state.copyWith(isPaused: true));
    _cancelWarmUpTimer();
    _pausePerformTimer();
  }

  void stop() {
    _cancelAllTimer();
    emit(state.copyWith(isCompleted: true));
  }

  @override
  Future<void> close() {
    _cancelAllTimer();
    _workoutHubListener?.cancel();
    return super.close();
  }
}
