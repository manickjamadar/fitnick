part of 'active_workout_actor_cubit.dart';

@freezed
abstract class ActiveWorkoutActorState with _$ActiveWorkoutActorState {
  const factory ActiveWorkoutActorState.initial() = _ActorInitial;
  const factory ActiveWorkoutActorState.acting() = _Acting;
  const factory ActiveWorkoutActorState.success({@required String message}) =
      _ActorSuccess;
  const factory ActiveWorkoutActorState.error({@required String message}) =
      _ActorError;
}
