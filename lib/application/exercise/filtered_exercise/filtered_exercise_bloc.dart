import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
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
        searched: _mapSearchedToState, refreshed: _mapRefreshedToState);
  }

  Stream<FilteredExerciseState> _mapSearchedToState(String searchTerm) async* {
    if (mainExercises.isEmpty) {
      yield state.copyWith(isLoading: false, exercises: none());
      return;
    }
    if (searchTerm.isEmpty) {
      yield state.copyWith(
          searchTerm: "",
          isLoading: false,
          exercises: Some([...mainExercises]));
      return;
    }
    final filteredExercises = mainExercises
        .where((exercise) => exercise.name.safeValue
            .contains(RegExp(searchTerm, caseSensitive: false)))
        .toList();
    yield state.copyWith(
        isLoading: false,
        exercises: Some(filteredExercises),
        searchTerm: searchTerm);
  }

  Stream<FilteredExerciseState> _mapRefreshedToState(
      List<Exercise> exercises) async* {
    yield state.copyWith(
        isLoading: false,
        exercises: exercises.isEmpty ? none() : Some(exercises));
  }

  @override
  Future<void> close() {
    exerciseListener?.cancel();
    return super.close();
  }
}
