part of 'exercise_hub_bloc.dart';

@freezed
abstract class ExerciseHubEvent with _$ExerciseHubEvent {
  const factory ExerciseHubEvent.init() = _ExerciseHubInit;
  const factory ExerciseHubEvent.exerciseAdded({@required Exercise exercise}) =
      _ExerciseHubAdded;
  const factory ExerciseHubEvent.exerciseUpdated(
      {@required Exercise exercise}) = _ExerciseHubUpdated;
  const factory ExerciseHubEvent.exerciseDeleted(
      {@required UniqueId exerciseId}) = _ExerciseHubDeleted;
  const factory ExerciseHubEvent.exerciseReordered() = _ExerciseHubRerodered;
}
