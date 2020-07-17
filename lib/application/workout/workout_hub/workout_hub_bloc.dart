import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/workout/facade/i_workout_facade.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_hub_event.dart';
part 'workout_hub_state.dart';
part "workout_hub_bloc.freezed.dart";

class WorkoutHubBloc extends Bloc<WorkoutHubEvent, WorkoutHubState> {
  final ExerciseHubBloc exerciseHubBloc;
  final IWorkoutFacade workoutFacade;
  StreamSubscription exerciseListener;
  WorkoutHubBloc({@required this.workoutFacade, @required this.exerciseHubBloc})
      : super(WorkoutHubState.loading()) {
    exerciseListener = exerciseHubBloc.listen((ExerciseHubState state) {
      state.maybeWhen(
          orElse: () {},
          loaded: (List<Exercise> exercise) {
            this.add(WorkoutHubEvent.refreshed());
          });
    });
  }

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

  @override
  Future<void> close() {
    exerciseListener?.cancel();
    return super.close();
  }
}
