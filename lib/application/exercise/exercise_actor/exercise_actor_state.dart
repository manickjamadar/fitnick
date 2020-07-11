part of 'exercise_actor_bloc.dart';

@freezed
abstract class ExerciseActorState with _$ExerciseActorState {
  const factory ExerciseActorState.initial() = _ActorInitial;
  const factory ExerciseActorState.acting() = _Acting;
  const factory ExerciseActorState.success({@required String message}) =
      _ActorSuccess;
  const factory ExerciseActorState.error({@required ExerciseFailure failure}) =
      _ActorError;
}
