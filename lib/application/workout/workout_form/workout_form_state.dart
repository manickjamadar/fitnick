part of 'workout_form_bloc.dart';

@freezed
abstract class WorkoutFormState implements _$WorkoutFormState {
  const WorkoutFormState._();
  const factory WorkoutFormState(
          {@required bool isEditing,
          @required bool isAdding,
          @required bool shouldShowErrorMessages,
          @required Workout workout,
          @required Option<Either<WorkoutFailure, Unit>> addStatus}) =
      _WorkoutFormState;
  factory WorkoutFormState.initial() {
    return WorkoutFormState(
        isAdding: false,
        isEditing: false,
        shouldShowErrorMessages: false,
        workout: Workout.initial(),
        addStatus: none());
  }
}
