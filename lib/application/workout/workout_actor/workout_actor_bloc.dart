import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_actor_event.dart';
part 'workout_actor_state.dart';
part 'workout_actor_bloc.freezed.dart';

class WorkoutActorBloc extends Bloc<WorkoutActorEvent, WorkoutActorState> {
  WorkoutActorBloc() : super(const WorkoutActorState.initial());

  @override
  Stream<WorkoutActorState> mapEventToState(
    WorkoutActorEvent event,
  ) async* {
    yield* event.when(
        deleted: _mapDeletedToState, reordered: _mapReorderedToState);
  }

  Stream<WorkoutActorState> _mapDeletedToState(Workout workout) async* {}
  Stream<WorkoutActorState> _mapReorderedToState() async* {}
}
