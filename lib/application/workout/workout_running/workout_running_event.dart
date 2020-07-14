part of 'workout_running_bloc.dart';

@freezed
abstract class WorkoutRunningEvent with _$WorkoutRunningEvent {
  const factory WorkoutRunningEvent.start({@required Workout workout}) = _Start;
  const factory WorkoutRunningEvent.next() = _Next;
  const factory WorkoutRunningEvent.previous() = _Previous;
  const factory WorkoutRunningEvent.restToogle() = _RestToggle;
  const factory WorkoutRunningEvent.complete() = _Complete;
}
