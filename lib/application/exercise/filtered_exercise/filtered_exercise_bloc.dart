import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
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
        searched: _mapSearchedToState,
        refreshed: _mapRefreshedToState,
        filtered: _mapFilteredToState,
        resetFiltered: _mapResetFilteredToState);
  }

  Stream<FilteredExerciseState> _mapSearchedToState(String searchTerm) async* {
    yield state.copyWith(
        isLoading: false,
        exercises: searchExerciseList(mainExercises, searchTerm),
        searchTerm: searchTerm);
  }

  Stream<FilteredExerciseState> _mapRefreshedToState(
      List<Exercise> exercises) async* {
    yield state.copyWith(
        isLoading: false,
        exercises: exercises.isEmpty ? none() : Some(exercises));
  }

  Stream<FilteredExerciseState> _mapFilteredToState(Exercise exercise) async* {
    yield state.copyWith(filteredExercise: exercise);
  }

  Stream<FilteredExerciseState> _mapResetFilteredToState() async* {
    yield state.copyWith(filteredExercise: Exercise.empty());
  }

  @override
  Future<void> close() {
    exerciseListener?.cancel();
    return super.close();
  }
}
