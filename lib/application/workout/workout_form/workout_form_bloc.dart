import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/workout/facade/i_workout_facade.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/domain/workout/value_object/workout_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_form_event.dart';
part 'workout_form_state.dart';
part 'workout_form_bloc.freezed.dart';

class WorkoutFormBloc extends Bloc<WorkoutFormEvent, WorkoutFormState> {
  final IWorkoutFacade workoutFacade;
  WorkoutFormBloc({@required this.workoutFacade})
      : super(WorkoutFormState.initial());

  @override
  Stream<WorkoutFormState> mapEventToState(
    WorkoutFormEvent event,
  ) async* {
    yield* event.when(
        init: _mapInitToState,
        nameChanged: _mapNameChangedToState,
        exerciseAdded: _mapExerciseAddedToState,
        exerciseRemoved: _mapExerciseRemovedToState,
        saved: _mapSavedToState);
  }

  Stream<WorkoutFormState> _mapInitToState(
      Option<Workout> workoutOption) async* {
    yield workoutOption.fold(
        () => state,
        (Workout workout) => state.copyWith(
            workout: workout, isEditing: true, addStatus: none()));
  }

  Stream<WorkoutFormState> _mapNameChangedToState(String name) async* {
    yield state.copyWith(
        workout: state.workout.copyWith(name: WorkoutName(name)),
        addStatus: none());
  }

  Stream<WorkoutFormState> _mapExerciseAddedToState(Exercise exercise) async* {
    final oldExercises = state.workout.exercises;
    final newExercises = [...oldExercises, exercise];
    yield state.copyWith(
        workout: state.workout.copyWith(exercises: newExercises),
        addStatus: none());
  }

  Stream<WorkoutFormState> _mapExerciseRemovedToState(
      UniqueId exerciseId) async* {
    final oldExercises = state.workout.exercises;
    final newExercises =
        oldExercises.where((exercise) => exercise.id != exercise.id).toList();
    yield state.copyWith(
        workout: state.workout.copyWith(exercises: newExercises),
        addStatus: none());
  }

  Stream<WorkoutFormState> _mapSavedToState() async* {
    yield state.copyWith(isAdding: true, addStatus: none());
    Either<WorkoutFailure, Unit> failureOrSuccess;
    if (state.workout.isValid) {
      failureOrSuccess = state.isEditing
          ? await workoutFacade.updateWorkout(state.workout)
          : await workoutFacade.createWorkout(state.workout);
    }
    yield state.copyWith(
        shouldShowErrorMessages: true,
        isAdding: false,
        addStatus: optionOf(failureOrSuccess));
  }
}
