import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/exercise/facade/i_exercise_facade.dart';
import 'package:fitnick/domain/exercise/failure/exercise_failure.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_hub_event.dart';
part 'exercise_hub_state.dart';
part 'exercise_hub_bloc.freezed.dart';

class ExerciseHubBloc extends Bloc<ExerciseHubEvent, ExerciseHubState> {
  final IExerciseFacade iExerciseFacade;
  ExerciseHubBloc({@required this.iExerciseFacade})
      : super(ExerciseHubState.loading());

  @override
  Stream<ExerciseHubState> mapEventToState(
    ExerciseHubEvent event,
  ) async* {
    yield* event.when(
        init: _bindInitToState,
        exerciseAdded: _bindAddedToState,
        exerciseUpdated: null,
        exerciseDeleted: null,
        exerciseReordered: null);
  }

  Stream<ExerciseHubState> _bindInitToState() async* {
    final failureOrSuccess = await iExerciseFacade.findAll();
    yield failureOrSuccess.fold(
        (failure) => ExerciseHubState.loadedError(failure: failure),
        (List<Exercise> exercises) =>
            ExerciseHubState.loaded(exercises: exercises));
  }

  Stream<ExerciseHubState> _bindAddedToState(Exercise exercise) async* {
    yield state.maybeWhen(
        orElse: () => state,
        loaded: (List<Exercise> exercises) =>
            ExerciseHubState.loaded(exercises: [...exercises, exercise]),
        reorderedError: (List<Exercise> exercises, _) =>
            ExerciseHubState.loaded(exercises: [...exercises, exercise]));
  }
}
