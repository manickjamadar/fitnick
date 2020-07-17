part of 'filtered_exercise_bloc.dart';

@freezed
abstract class FilteredExerciseState with _$FilteredExerciseState {
  const factory FilteredExerciseState.loading() = _Loading;
  const factory FilteredExerciseState.loaded({
    @required List<Exercise> exercises,
  }) = _LoadedExercise;
  const factory FilteredExerciseState.loadedError(
      {@required ExerciseFailure failure}) = _LoadedErrorExercise;
}
