part of 'exercise_form_bloc.dart';

@freezed
abstract class ExerciseFormState implements _$ExerciseFormState {
  const ExerciseFormState._();
  const factory ExerciseFormState(
          {@required bool isEditing,
          @required bool isAdding,
          @required bool shouldShowErrorMessages,
          @required Exercise exercise,
          @required Option<Either<ExerciseFailure, Unit>> addStatus}) =
      _ExerciseFormState;
  factory ExerciseFormState.initial(){
    return ExerciseFormState(
      isEditing: false,
      isAdding: false,
      shouldShowErrorMessages: false,
      exercise: Exercise.initial(),
      addStatus: none()
    );
  }
}
