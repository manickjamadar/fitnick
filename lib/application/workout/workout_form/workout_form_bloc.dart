import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_form_event.dart';
part 'workout_form_state.dart';
part 'workout_form_bloc.freezed.dart';

class WorkoutFormBloc extends Bloc<WorkoutFormEvent, WorkoutFormState> {
  WorkoutFormBloc() : super(WorkoutFormState.initial());

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

  Stream<WorkoutFormState> _mapNameChangedToState(String name) async* {}
  Stream<WorkoutFormState> _mapExerciseAddedToState(Exercise exercise) async* {}
  Stream<WorkoutFormState> _mapExerciseRemovedToState(
      UniqueId exerciseId) async* {}
  Stream<WorkoutFormState> _mapSavedToState() async* {}
}
