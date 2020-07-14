part of 'workout_running_bloc.dart';

@freezed
abstract class WorkoutRunningState implements _$WorkoutRunningState {
  const WorkoutRunningState._();
  const factory WorkoutRunningState(
      {@required Option<int> currentIndex,
      @required int length,
      @required Duration rest,
      @required Duration totalRest,
      @required bool isResting,
      @required bool hasNextExercise,
      @required bool hasPreviousExercise,
      @required bool isCompleted}) = _WorkoutRunningState;
  factory WorkoutRunningState.initial() {
    return WorkoutRunningState(
        currentIndex: none(),
        length: 0,
        rest: Duration(seconds: 0),
        totalRest: Duration(seconds: 0),
        isResting: false,
        hasNextExercise: false,
        hasPreviousExercise: false,
        isCompleted: false);
  }
}
