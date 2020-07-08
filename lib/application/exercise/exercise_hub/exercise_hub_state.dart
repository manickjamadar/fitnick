part of 'exercise_hub_bloc.dart';

@freezed
abstract class ExerciseHubState with _$ExerciseHubState {
  const factory ExerciseHubState.loading() = _ExerciseHubLoading;
  const factory ExerciseHubState.loaded({@required List<Exercise> exercises}) =
      _ExerciseHubLoaded;
  const factory ExerciseHubState.loadedError(
      {@required ExerciseFailure failure}) = _ExerciseHubLoadedError;
  const factory ExerciseHubState.reorderedError(
      {@required List<Exercise> exercises,
      @required ExerciseFailure failure}) = _ExerciseHubReorderedError;
}
