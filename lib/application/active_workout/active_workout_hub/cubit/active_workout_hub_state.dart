part of 'active_workout_hub_cubit.dart';

@freezed
abstract class ActiveWorkoutHubState with _$ActiveWorkoutHubState {
  const factory ActiveWorkoutHubState.loading() = _ActiveWorkoutHubLoading;
  const factory ActiveWorkoutHubState.loaded(
      List<ActiveWorkout> activeWorkouts) = _ActiveWorkoutHubLoaded;
  const factory ActiveWorkoutHubState.loadedError(
      {@required WorkoutFailure failure}) = _ActiveWorkoutHubLoadedError;
}
