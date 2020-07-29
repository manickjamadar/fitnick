import 'package:bloc/bloc.dart';
import 'package:fitnick/domain/active_workout/facade/i_active_workout_facade.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_workout_actor_state.dart';
part 'active_workout_actor_cubit.freezed.dart';

class ActiveWorkoutActorCubit extends Cubit<ActiveWorkoutActorState> {
  final IActiveWorkoutFacade activeWorkoutFacade;
  ActiveWorkoutActorCubit({@required this.activeWorkoutFacade})
      : super(ActiveWorkoutActorState.initial());

  //events
  Future<void> delete(ActiveWorkout activeWorkout) async {
    final failureOrSuccess = await activeWorkoutFacade.delete(activeWorkout.id);
    failureOrSuccess.fold(
        (WorkoutFailure failure) => emit(ActiveWorkoutActorState.error(
            message: "${activeWorkout.name.safeValue} deletion failed")),
        (_) => emit(ActiveWorkoutActorState.success(
            message: "${activeWorkout.name.safeValue} deleted successfully")));
  }
}
