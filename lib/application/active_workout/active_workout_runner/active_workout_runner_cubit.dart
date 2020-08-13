import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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
  ActiveWorkoutRunnerCubit() : super(ActiveWorkoutRunnerState.initial());

  //? Timers Here =========================================

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
      _performTimer =
          Stream.periodic(
                  Duration(
                      seconds:
                          activeExercise.performTempo(exerciseSet.performType)),
                  (i) => i + initialCount)
              .take(exerciseSet.performCount - (initialCount - 1))
              .listen((tick) {
        _onPerformStart(tick + 1);
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

  void countRest(int seconds) {
    if (seconds < 6) {
      String word = seconds.toString();
      if (seconds < 1) {
        word = "start";
      }
      tts.speak(word);
    }
  }

  void _onRestContinue(int seconds) {
    countRest(seconds);
    emit(state.copyWith(
        isResting: true, currentRest: Duration(seconds: seconds)));
  }

  void _onRestComplete() {
    _resetRestTimer();
    _autoNext();
  }

  void _onPerformStart(int count) {
    emit(state.copyWith(currentPerformedCount: count));
  }

  void _onPerformComplete() {
    _resetPerformTimer();
    _startRestTimer();
  }

  void _autoNext() {
    _continueNextStep();
    if (!state.isCompleted) {
      _startPerformTimer();
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

  //events
  void init(ActiveWorkout activeWorkout) {
    emit(state.copyWith(
        activeWorkoutOption: Some(activeWorkout),
        isCompleted: activeWorkout.activeExercises.isEmpty));
  }

  void skipRest() {
    _onRestComplete();
  }

  void skipExercise() {
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
    _startPerformTimer();
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
