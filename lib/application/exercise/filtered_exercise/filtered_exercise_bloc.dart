import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/application/exercise/filtered_exercise/helpers/filter_exercise_list.dart';
import 'package:fitnick/application/exercise/filtered_exercise/helpers/search_exercise_list.dart';
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
      : super(FilteredExerciseState.initial()) {
    exerciseListener = exerciseHubBloc.listen((state) {
      state.maybeWhen(
          orElse: () {},
          loaded: (List<Exercise> exercises) {
            add(FilteredExerciseEvent.refreshed(exercises: exercises));
          });
    });
  }

  @override
  Stream<FilteredExerciseState> mapEventToState(
    FilteredExerciseEvent event,
  ) async* {
    yield* event.when(
        searched: _mapSearchedToState,
        refreshed: _mapRefreshedToState,
        filtered: _mapFilteredToState,
        resetFiltered: _mapResetFilteredToState);
  }

  Stream<FilteredExerciseState> _mapSearchedToState(String searchTerm) async* {
    final filteredExercise =
        filterExerciseList(mainExercises, state.filteredExercise);
    yield state.copyWith(
        isLoading: false,
        exercises:
            exercisesOptionOf(searchExerciseList(filteredExercise, searchTerm)),
        searchTerm: searchTerm);
  }

  Stream<FilteredExerciseState> _mapRefreshedToState(
      List<Exercise> exercises) async* {
    mainExercises = [...exercises];
    yield state.copyWith(
        isLoading: false, exercises: exercisesOptionOf(mainExercises));
  }

  Stream<FilteredExerciseState> _mapFilteredToState(
      Exercise filteredExercise) async* {
    final searchedExercises =
        searchExerciseList(mainExercises, state.searchTerm);
    final filteredExerciseList =
        filterExerciseList(searchedExercises, filteredExercise);
    yield state.copyWith(
        isLoading: false,
        filteredExercise: filteredExercise,
        exercises: exercisesOptionOf(filteredExerciseList));
  }

  Stream<FilteredExerciseState> _mapResetFilteredToState() async* {
    yield state.copyWith(
        filteredExercise: Exercise.empty(),
        exercises: exercisesOptionOf(
            searchExerciseList(mainExercises, state.searchTerm)));
  }

  @override
  Future<void> close() {
    exerciseListener?.cancel();
    return super.close();
  }

  Option<List<Exercise>> exercisesOptionOf(List<Exercise> list) {
    return mainExercises.isEmpty ? none() : Some(list);
  }
}
