import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_workout_runner_state.dart';
part 'active_workout_runner_cubit.freezed.dart';

class ActiveWorkoutRunnerCubit extends Cubit<ActiveWorkoutRunnerState> {
  ActiveWorkoutRunnerCubit() : super(ActiveWorkoutRunnerState.initial());

  bool hasNextExercise(ActiveWorkout activeWorkout) =>
      state.currentActiveExerciseIndex <
      activeWorkout.activeExercises.length - 1;
  bool hasNextSet(ActiveWorkout activeWorkout) =>
      state.currentSetIndex <
      activeWorkout
              .activeExercises[state.currentActiveExerciseIndex].sets.length -
          1;
  bool hasPreviousExercise(ActiveWorkout activeWorkout) =>
      state.currentActiveExerciseIndex > 0;
  //events
  void init(ActiveWorkout activeWorkout) {
    emit(state.copyWith(
        activeWorkoutOption: Some(activeWorkout),
        isCompleted: activeWorkout.activeExercises.isEmpty));
  }

  void goNext() {
    state.activeWorkoutOption.fold(() => null, (activeWorkout) {
      if (hasNextSet(activeWorkout)) {
        emit(state.copyWith(currentSetIndex: state.currentSetIndex + 1));
      } else {
        if (hasNextExercise(activeWorkout)) {
          skipExercise();
        } else {
          stop();
        }
      }
    });
  }

  void goBack() {
    state.activeWorkoutOption.fold(() => null, (activeWorkout) {
      if (hasPreviousExercise(activeWorkout)) {
        emit(state.copyWith(
            currentSetIndex: 0,
            currentActiveExerciseIndex: state.currentActiveExerciseIndex - 1));
      }
    });
  }

  void skipExercise() {
    state.activeWorkoutOption.fold(() => null, (activeWorkout) {
      if (hasNextExercise(activeWorkout)) {
        emit(state.copyWith(
            currentSetIndex: 0,
            currentActiveExerciseIndex: state.currentActiveExerciseIndex + 1));
      }
    });
  }

  void play() {}
  void pause() {}
  void stop() {
    emit(state.copyWith(isCompleted: true));
  }
}
