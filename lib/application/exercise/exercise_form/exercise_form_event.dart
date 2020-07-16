part of 'exercise_form_bloc.dart';

@freezed
abstract class ExerciseFormEvent with _$ExerciseFormEvent {
  const factory ExerciseFormEvent.init(Option<Exercise> exerciseOption) =
      _ExerciseFormInit;
  const factory ExerciseFormEvent.nameChanged(String name) =
      _ExerciseNamedChanged;
  const factory ExerciseFormEvent.levelsChanged(List<ExerciseLevel> levels) =
      _ExerciseLevelChanged;
  const factory ExerciseFormEvent.toolsChanged(List<ExerciseTool> tools) =
      _ExerciseToolChanged;
  const factory ExerciseFormEvent.typesChanged(List<ExerciseType> types) =
      _ExerciseTypeChanged;
  const factory ExerciseFormEvent.primaryTargetsChanged(
      List<ExerciseTarget> primaryTargets) = _ExercisePrimaryTargetChanged;
  const factory ExerciseFormEvent.secondaryTargetsChanged(
      List<ExerciseTarget> secondaryTargets) = _ExerciseSecondaryTargetChanged;
  const factory ExerciseFormEvent.added() = _ExerciseAdded;
}
