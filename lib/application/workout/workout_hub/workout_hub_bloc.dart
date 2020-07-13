import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitnick/domain/workout/facade/i_workout_facade.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_hub_event.dart';
part 'workout_hub_state.dart';
part "workout_hub_bloc.freezed.dart";

class WorkoutHubBloc extends Bloc<WorkoutHubEvent, WorkoutHubState> {
  final IWorkoutFacade workoutFacade;
  WorkoutHubBloc({@required this.workoutFacade})
      : super(WorkoutHubState.loading());

  @override
  Stream<WorkoutHubState> mapEventToState(
    WorkoutHubEvent event,
  ) async* {
    yield* event.when(init: _mapInitToState, refreshed: _mapRefreshedToState);
  }

  Stream<WorkoutHubState> _mapInitToState() async* {
    yield WorkoutHubState.loading();
    yield* _mapRefreshedToState();
  }

  Stream<WorkoutHubState> _mapRefreshedToState() async* {
    final failureOrSuccess = await workoutFacade.findAll();
    yield failureOrSuccess.fold(
        (failure) => WorkoutHubState.loadedError(failure: failure),
        (List<Workout> workouts) => WorkoutHubState.loaded(workouts: workouts));
  }
}
