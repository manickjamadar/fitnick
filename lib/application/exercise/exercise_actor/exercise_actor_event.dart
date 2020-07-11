part of 'exercise_actor_bloc.dart';

@freezed
abstract class ExerciseActorEvent with _$ExerciseActorEvent {
  const factory ExerciseActorEvent.deleted({@required UniqueId exerciseId}) =
      _ActorDeleted;
  const factory ExerciseActorEvent.reordered() = _ActorReordered;
}
