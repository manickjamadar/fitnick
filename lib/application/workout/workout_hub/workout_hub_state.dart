part of 'workout_hub_bloc.dart';

@freezed
abstract class WorkoutHubState with _$WorkoutHubState {
  const factory WorkoutHubState.loading() = _WorkoutHubLoading;
  const factory WorkoutHubState.loaded({@required List<Workout> workouts}) =
      _WorkoutHubLoaded;
  const factory WorkoutHubState.loadedError(
      {@required WorkoutFailure failure}) = _WorkoutHubLoadedError;
}
