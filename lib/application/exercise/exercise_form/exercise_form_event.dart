part of 'exercise_form_bloc.dart';

@freezed
abstract class ExerciseFormEvent with _$ExerciseFormEvent {
  const factory ExerciseFormEvent.init(Option<Exercise> exercise) =
      _ExerciseFormInit;
  const factory ExerciseFormEvent.exerciseNameChanged(String name) =
      _ExerciseNamedChanged;
  const factory ExerciseFormEvent.exerciseLevelChanged(ExerciseLevel level) =
      _ExerciseLevelChanged;
  const factory ExerciseFormEvent.exerciseToolChanged(ExerciseTool tool) =
      _ExerciseToolChanged;
  const factory ExerciseFormEvent.exerciseTypeChanged(ExerciseType type) =
      _ExerciseTypeChanged;
  const factory ExerciseFormEvent.exerciseTargetChanged(ExerciseTarget target) =
      _ExerciseTargetChanged;
  const factory ExerciseFormEvent.added() = _ExerciseAdded;
}
