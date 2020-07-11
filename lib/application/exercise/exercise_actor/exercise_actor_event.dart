part of 'exercise_actor_bloc.dart';

@freezed
abstract class ExerciseActorEvent with _$ExerciseActorEvent {
  const factory ExerciseActorEvent.added({@required Exercise exercise}) =
      _ActorAdded;
  const factory ExerciseActorEvent.updated({@required Exercise exercise}) =
      _ActorUpdated;
  const factory ExerciseActorEvent.deleted({@required UniqueId exerciseId}) =
      _ActorDeleted;
}
