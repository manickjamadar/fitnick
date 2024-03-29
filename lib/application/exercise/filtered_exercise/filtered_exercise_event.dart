part of 'filtered_exercise_bloc.dart';

@freezed
abstract class FilteredExerciseEvent with _$FilteredExerciseEvent {
  const factory FilteredExerciseEvent.searched({@required String term}) =
      _Searched;
  const factory FilteredExerciseEvent.refreshed(
      {@required List<Exercise> exercises}) = _Refreshed;
  const factory FilteredExerciseEvent.filtered(Exercise exercise) = _Filtered;
  const factory FilteredExerciseEvent.resetFiltered() = _ResetFiltered;
}
