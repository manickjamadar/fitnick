part of 'workout_actor_bloc.dart';

@freezed
abstract class WorkoutActorState with _$WorkoutActorState {
  const factory WorkoutActorState.initial() = _ActorInitial;
  const factory WorkoutActorState.acting() = _Acting;
  const factory WorkoutActorState.success({@required String message}) =
      _WorkoutActorSuccess;
  const factory WorkoutActorState.error({@required String message}) =
      _WorkoutActorError;
}
