import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitnick/domain/workout/facade/i_workout_facade.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_actor_event.dart';
part 'workout_actor_state.dart';
part 'workout_actor_bloc.freezed.dart';

class WorkoutActorBloc extends Bloc<WorkoutActorEvent, WorkoutActorState> {
  final IWorkoutFacade workoutFacade;
  WorkoutActorBloc({@required this.workoutFacade})
      : super(const WorkoutActorState.initial());

  @override
  Stream<WorkoutActorState> mapEventToState(
    WorkoutActorEvent event,
  ) async* {
    yield* event.when(
        deleted: _mapDeletedToState, reordered: _mapReorderedToState);
  }

  Stream<WorkoutActorState> _mapDeletedToState(Workout workout) async* {
    final failureOrSuccess = await workoutFacade.deleteWorkout(workout.id);
    yield failureOrSuccess.fold(
        (failure) => WorkoutActorState.error(
            message: "${workout.name.safeValue} deletion failed"),
        (_) => WorkoutActorState.success(
            message: "${workout.name.safeValue} deleted successfully"));
  }

  Stream<WorkoutActorState> _mapReorderedToState() async* {
    throw UnimplementedError();
  }
}
