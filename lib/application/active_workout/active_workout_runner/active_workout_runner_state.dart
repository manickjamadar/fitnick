part of 'active_workout_runner_cubit.dart';

@freezed
abstract class ActiveWorkoutRunnerState implements _$ActiveWorkoutRunnerState {
  const ActiveWorkoutRunnerState._();
  const factory ActiveWorkoutRunnerState({
    @required Option<ActiveWorkout> activeWorkoutOption,
    @required int currentActiveExerciseIndex,
    @required int currentSetIndex,
    @required Duration totalTimeSpent,
    @required bool isCompleted,
    @required int currentPerformedCount,
    @required bool isPaused,
    @required bool isResting,
    @required bool voiceEnabled,
    @required Duration currentRest,
    @required bool isLoggingReps,
  }) = _ActiveWorkoutRunnerState;
  factory ActiveWorkoutRunnerState.initial() {
    return ActiveWorkoutRunnerState(
        activeWorkoutOption: none(),
        currentActiveExerciseIndex: 0,
        currentSetIndex: 0,
        isCompleted: false,
        totalTimeSpent: Duration(seconds: 0),
        currentPerformedCount: 1,
        isPaused: true,
        isResting: false,
        voiceEnabled: true,
        isLoggingReps: false,
        currentRest: Duration(seconds: 0));
  }
}
