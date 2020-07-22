part of 'filtered_exercise_bloc.dart';

@freezed
abstract class FilteredExerciseState implements _$FilteredExerciseState {
  const FilteredExerciseState._();
  const factory FilteredExerciseState({
    @required Option<List<Exercise>> exercises,
    @required String searchTerm,
    @required bool isLoading,
    @required Exercise filteredExercise,
  }) = _FilteredExerciseState;

  factory FilteredExerciseState.initial() {
    return FilteredExerciseState(
        filteredExercise: Exercise.empty(),
        exercises: none(),
        searchTerm: "",
        isLoading: true);
  }
}
