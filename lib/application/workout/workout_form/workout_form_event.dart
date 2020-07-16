part of 'workout_form_bloc.dart';

@freezed
abstract class WorkoutFormEvent with _$WorkoutFormEvent {
  const factory WorkoutFormEvent.init(Option<Workout> workoutOption) =
      _WorkoutFormInit;
  const factory WorkoutFormEvent.nameChanged({@required String name}) =
      _WorkoutNameChanged;
  const factory WorkoutFormEvent.exerciseAdded({@required Exercise exercise}) =
      _WorkoutExerciseAdded;
  const factory WorkoutFormEvent.exerciseRemoved(
      {@required UniqueId exerciseId}) = _WorkoutExerciseRemoved;
  const factory WorkoutFormEvent.saved() = _WorkoutSaved;
  const factory WorkoutFormEvent.exerciseReordered({
    @required int oldIndex,
    @required int newIndex,
  }) = _ExerciseReordered;
}
