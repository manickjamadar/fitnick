part of 'active_workout_runner_cubit.dart';

@freezed
abstract class ActiveWorkoutRunnerState implements _$ActiveWorkoutRunnerState {
  const ActiveWorkoutRunnerState._();
  const factory ActiveWorkoutRunnerState({
    @required bool isCompleted,
    @required Option<ActiveWorkout> activeWorkoutOption,
    @required int currentActiveExerciseIndex,
    @required int currentSetIndex,
    @required Duration totalTimeSpent,
  }) = _ActiveWorkoutRunnerState;
  factory ActiveWorkoutRunnerState.initial() {
    return ActiveWorkoutRunnerState(
      activeWorkoutOption: none(),
      currentActiveExerciseIndex: 0,
      currentSetIndex: 0,
      isCompleted: false,
      totalTimeSpent: Duration(seconds: 0),
    );
  }
}
