import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/domain/exercise/failure/exercise_failure.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filtered_exercise_event.dart';
part 'filtered_exercise_state.dart';
part 'filtered_exercise_bloc.freezed.dart';

class FilteredExerciseBloc
    extends Bloc<FilteredExerciseEvent, FilteredExerciseState> {
  final ExerciseHubBloc exerciseHubBloc;
  StreamSubscription exerciseListener;
  List<Exercise> mainExercises = [];
  FilteredExerciseBloc({@required this.exerciseHubBloc})
      : super(FilteredExerciseState.loading()) {
    exerciseListener = exerciseHubBloc.listen((state) {
      state.when(
          loading: () {
            add(FilteredExerciseEvent.loading());
          },
          loadedError: (failure) =>
              add(FilteredExerciseEvent.loadedError(failure: failure)),
          loaded: (exercises) {
            mainExercises = [...exercises];
            add(FilteredExerciseEvent.refreshed(exercises: exercises));
          });
    });
  }

  @override
  Stream<FilteredExerciseState> mapEventToState(
    FilteredExerciseEvent event,
  ) async* {
    yield* event.when(
        loadedError: (failure) async* {
          yield FilteredExerciseState.loadedError(failure: failure);
        },
        loading: () async* {
          yield FilteredExerciseState.loading();
        },
        searched: _mapSearchedToState,
        refreshed: _mapRefreshedToState);
  }

  Stream<FilteredExerciseState> _mapSearchedToState(String searchTerm) async* {
    if (searchTerm.isEmpty) {
      yield FilteredExerciseState.loaded(exercises: [...mainExercises]);
    }
    final List<Exercise> filteredExercises = mainExercises
        .where((exercise) => exercise.name.safeValue
            .contains(RegExp(searchTerm, caseSensitive: false)))
        .toList();
    yield FilteredExerciseState.loaded(exercises: filteredExercises);
  }

  Stream<FilteredExerciseState> _mapRefreshedToState(
      List<Exercise> exercises) async* {
    yield FilteredExerciseState.loaded(exercises: exercises);
  }

  @override
  Future<void> close() {
    exerciseListener?.cancel();
    return super.close();
  }
}
