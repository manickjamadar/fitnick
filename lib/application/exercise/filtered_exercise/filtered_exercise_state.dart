part of 'filtered_exercise_bloc.dart';

@freezed
abstract class FilteredExerciseState implements _$FilteredExerciseState {
  const factory FilteredExerciseState({
    @required Option<List<Exercise>> exercises,
    @required String searchTerm,
    @required bool isLoading,
  }) = _FilteredExerciseState;

  factory FilteredExerciseState.initial() {
    return FilteredExerciseState(
        exercises: none(), searchTerm: "", isLoading: true);
  }
}
