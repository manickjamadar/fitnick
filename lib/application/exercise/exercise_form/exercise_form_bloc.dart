import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/exercise/facade/i_exercise_facade.dart';
import 'package:fitnick/domain/exercise/failure/exercise_failure.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/exercise/models/exercise_level.dart';
import 'package:fitnick/domain/exercise/models/exercise_target.dart';
import 'package:fitnick/domain/exercise/models/exercise_tool.dart';
import 'package:fitnick/domain/exercise/models/exercise_type.dart';
import 'package:fitnick/domain/exercise/value_object/exercise_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_form_event.dart';
part 'exercise_form_state.dart';
part "exercise_form_bloc.freezed.dart";

class ExerciseFormBloc extends Bloc<ExerciseFormEvent, ExerciseFormState> {
  final IExerciseFacade iExerciseFacade;
  ExerciseFormBloc({@required this.iExerciseFacade})
      : super(ExerciseFormState.initial());

  @override
  Stream<ExerciseFormState> mapEventToState(
    ExerciseFormEvent event,
  ) async* {
    yield* event.when(
        init: _bindInitToState,
        exerciseNameChanged: _bindExerciseNameChangedToState,
        exerciseLevelChanged: null,
        exerciseToolChanged: null,
        exerciseTypeChanged: null,
        exerciseTargetChanged: null,
        added: null);
  }

  Stream<ExerciseFormState> _bindInitToState(
      Option<Exercise> exerciseOption) async* {
    yield exerciseOption.fold(
        () => state, (Exercise exercise) => state.copyWith(exercise: exercise));
  }

  Stream<ExerciseFormState> _bindExerciseNameChangedToState(
      String name) async* {
    yield state.copyWith(
        exercise: state.exercise.copyWith(name: ExerciseName(name)),
        addStatus: none());
  }
}
