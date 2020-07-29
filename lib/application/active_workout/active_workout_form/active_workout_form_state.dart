part of 'active_workout_form_cubit.dart';

@freezed
abstract class ActiveWorkoutFormState implements _$ActiveWorkoutFormState {
  const ActiveWorkoutFormState._();
  const factory ActiveWorkoutFormState(
          {@required bool isEditing,
          @required bool isAdding,
          @required bool shouldShowErrorMessages,
          @required ActiveWorkout activeWorkout,
          @required Option<Either<WorkoutFailure, Unit>> addStatus}) =
      _ActiveWorkoutFormState;
  factory ActiveWorkoutFormState.initial() {
    return ActiveWorkoutFormState(
        isAdding: false,
        isEditing: false,
        shouldShowErrorMessages: false,
        activeWorkout: ActiveWorkout.initial(),
        addStatus: none());
  }
}
