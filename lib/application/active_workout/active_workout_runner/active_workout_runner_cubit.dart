import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "../../core/helpers/list_extension.dart";
part 'active_workout_runner_state.dart';
part 'active_workout_runner_cubit.freezed.dart';

class ActiveWorkoutRunnerCubit extends Cubit<ActiveWorkoutRunnerState> {
  StreamSubscription<int> _spentTimer;
  StreamSubscription<int> _performTimer;
  ActiveWorkoutRunnerCubit() : super(ActiveWorkoutRunnerState.initial());

  void _startPerformTimer() {
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

  void _onPerformStart(int count) {
    emit(state.copyWith(currentPerformedCount: count));
  }

  void _onPerformComplete() {
    emit(state.copyWith(currentPerformedCount: 1));
    goNext();
  }

  void _cancelPerformTimer() {
    _performTimer?.cancel();
  }

  void _cancelAllTimer() {
    _cancelPerformTimer();
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

  void _cancelSpentTimer() {
    _spentTimer?.cancel();
  }

  //events
  void init(ActiveWorkout activeWorkout) {
    emit(state.copyWith(
        activeWorkoutOption: Some(activeWorkout),
        isCompleted: activeWorkout.activeExercises.isEmpty));
  }

  void goNext() {
    state.activeWorkoutOption.fold(() => null, (activeWorkout) {
      final hasNextSet = activeWorkout
          .activeExercises[state.currentActiveExerciseIndex].sets
          .hasNext(state.currentSetIndex);
      if (hasNextSet) {
        goNextSet();
      } else {
        final hasNextExercise = activeWorkout.activeExercises
            .hasNext(state.currentActiveExerciseIndex);
        if (hasNextExercise) {
          skipExercise();
        } else {
          stop();
        }
      }
    });
  }

  void goNextSet() {
    state.activeWorkoutOption.fold(() => null, (activeWorkout) {
      final hasNextSet = activeWorkout
          .activeExercises[state.currentActiveExerciseIndex].sets
          .hasNext(state.currentSetIndex);
      if (hasNextSet) {
        emit(state.copyWith(currentSetIndex: state.currentSetIndex + 1));
      }
    });
  }

  void goBack() {
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

  void skipExercise() {
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

  void play() {
    emit(state.copyWith(isPaused: false));
    _startSpentTimer();
    _startPerformTimer();
  }

  void pause() {
    emit(state.copyWith(isPaused: true));
    _cancelSpentTimer();
    _cancelPerformTimer();
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
