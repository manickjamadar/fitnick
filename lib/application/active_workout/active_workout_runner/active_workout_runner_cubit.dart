import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "../../core/helpers/list_extension.dart";
part 'active_workout_runner_state.dart';
part 'active_workout_runner_cubit.freezed.dart';

class ActiveWorkoutRunnerCubit extends Cubit<ActiveWorkoutRunnerState> {
  ActiveWorkoutRunnerCubit() : super(ActiveWorkoutRunnerState.initial());

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
  }

  void pause() {
    emit(state.copyWith(isPaused: true));
  }

  void stop() {
    emit(state.copyWith(isCompleted: true));
  }
}
