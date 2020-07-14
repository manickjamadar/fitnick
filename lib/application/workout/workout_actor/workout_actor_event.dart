part of 'workout_actor_bloc.dart';

@freezed
abstract class WorkoutActorEvent with _$WorkoutActorEvent {
  const factory WorkoutActorEvent.deleted({@required Workout workout}) =
      _Deleted;
  const factory WorkoutActorEvent.reordered() = _Reordered;
}
