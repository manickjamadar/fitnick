import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_running_event.dart';
part 'workout_running_state.dart';
part 'workout_running_bloc.freezed.dart';

class WorkoutRunningBloc
    extends Bloc<WorkoutRunningEvent, WorkoutRunningState> {
  WorkoutRunningBloc() : super(WorkoutRunningState.initial());

  @override
  Stream<WorkoutRunningState> mapEventToState(
    WorkoutRunningEvent event,
  ) async* {
    yield* event.when(
        start: _mapStartToState,
        next: _mapNextToState,
        previous: _mapPreviousToState,
        restOn: _mapRestOnToState,
        restOff: _mapRestOffToState,
        complete: _mapCompleteToState);
  }

  Stream<WorkoutRunningState> _mapStartToState(Workout workout) async* {
    if (workout.exercises.isEmpty) {
      yield state.copyWith(isCompleted: true);
    } else {
      yield WorkoutRunningState(
          currentIndex: Some(0),
          rest: Duration(seconds: 0),
          totalRest: Duration(seconds: 0),
          isResting: false,
          hasPreviousExercise: false,
          hasNextExercise: workout.exercises.length > 1,
          isCompleted: false);
    }
  }

  Stream<WorkoutRunningState> _mapNextToState() async* {}
  Stream<WorkoutRunningState> _mapPreviousToState() async* {}
  Stream<WorkoutRunningState> _mapRestOnToState() async* {}
  Stream<WorkoutRunningState> _mapRestOffToState() async* {}
  Stream<WorkoutRunningState> _mapCompleteToState() async* {}
}
