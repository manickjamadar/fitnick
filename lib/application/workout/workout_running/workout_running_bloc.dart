import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_running_event.dart';
part 'workout_running_state.dart';
part 'workout_running_bloc.freezed.dart';

class WorkoutRunningBloc
    extends Bloc<WorkoutRunningEvent, WorkoutRunningState> {
  WorkoutRunningBloc() : super(WorkoutRunningState.initial());
  StreamSubscription<int> streamSubscription;

  @override
  Stream<WorkoutRunningState> mapEventToState(
    WorkoutRunningEvent event,
  ) async* {
    yield* event.when(
        start: _mapStartToState,
        next: _mapNextToState,
        previous: _mapPreviousToState,
        restToogle: _mapRestToggleToState,
        complete: _mapCompleteToState,
        restChanged: _mapRestChangedToState,
        resetRest: _mapResetRestToState);
  }

  Stream<WorkoutRunningState> _mapStartToState(Workout workout) async* {
    if (workout.exercises.isEmpty) {
      yield state.copyWith(isCompleted: true);
    } else {
      yield WorkoutRunningState(
          currentIndex: Some(0),
          length: workout.exercises.length,
          rest: Duration(seconds: 0),
          totalRest: Duration(seconds: 0),
          isResting: false,
          hasPreviousExercise: false,
          hasNextExercise: workout.exercises.length > 1,
          isCompleted: false);
    }
  }

  Stream<WorkoutRunningState> _mapNextToState() async* {
    if (state.hasNextExercise) {
      _resetRestTimer();
      yield state.currentIndex.fold(
          () => state,
          (index) => state.copyWith(
              currentIndex: Some(index + 1),
              hasPreviousExercise: true,
              hasNextExercise: (index + 1) < (state.length - 1)));
    }
  }

  Stream<WorkoutRunningState> _mapPreviousToState() async* {
    if (state.hasPreviousExercise) {
      _resetRestTimer();
      yield state.currentIndex.fold(
          () => state,
          (index) => state.copyWith(
              currentIndex: Some(index - 1),
              hasPreviousExercise: (index - 1) > 0,
              hasNextExercise: true));
    }
  }

  Stream<WorkoutRunningState> _mapRestToggleToState() async* {
    if (state.isResting) {
      _resetRestTimer();
    } else {
      yield state.copyWith(isResting: true);
      _startRestTimer();
    }
  }

  Stream<WorkoutRunningState> _mapCompleteToState() async* {
    streamSubscription?.cancel();
    yield state.copyWith(isCompleted: true);
  }

  Stream<WorkoutRunningState> _mapResetRestToState() async* {
    yield state.copyWith(isResting: false, rest: Duration(seconds: 0));
  }

  Stream<WorkoutRunningState> _mapRestChangedToState() async* {
    final newTotalRest = Duration(seconds: state.totalRest.inSeconds + 1);
    final newRest = Duration(seconds: state.rest.inSeconds + 1);
    yield state.copyWith(
        isResting: true, totalRest: newTotalRest, rest: newRest);
  }

  void _startRestTimer() {
    streamSubscription?.cancel();
    streamSubscription =
        Stream.periodic(Duration(seconds: 1), (i) => i).listen((_) {
      add(WorkoutRunningEvent.restChanged());
    });
  }

  void _resetRestTimer() {
    streamSubscription?.cancel();
    add(WorkoutRunningEvent.resetRest());
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
