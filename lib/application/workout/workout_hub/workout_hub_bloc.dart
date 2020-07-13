import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_hub_event.dart';
part 'workout_hub_state.dart';
part "workout_hub_bloc.freezed.dart";

class WorkoutHubBloc extends Bloc<WorkoutHubEvent, WorkoutHubState> {
  WorkoutHubBloc() : super(WorkoutHubState.loading());

  @override
  Stream<WorkoutHubState> mapEventToState(
    WorkoutHubEvent event,
  ) async* {
    yield* event.when(init: _mapInitToState, refreshed: _mapRefreshedToState);
  }

  Stream<WorkoutHubState> _mapInitToState() async* {}
  Stream<WorkoutHubState> _mapRefreshedToState() async* {}
}
