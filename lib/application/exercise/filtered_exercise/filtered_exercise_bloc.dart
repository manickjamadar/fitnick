import 'dart:async';

import 'package:bloc/bloc.dart';
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
  FilteredExerciseBloc({@required this.exerciseHubBloc})
      : super(FilteredExerciseState.loading()) {
    exerciseListener = exerciseHubBloc.listen((state) {
      state.maybeWhen(
          orElse: () {},
          loaded: (exercises) =>
              add(FilteredExerciseEvent.refreshed(exercises: exercises)));
    });
  }

  @override
  Stream<FilteredExerciseState> mapEventToState(
    FilteredExerciseEvent event,
  ) async* {
    yield* event.when(
        searched: _mapSearchedToState, refreshed: _mapRefreshedToState);
  }

  Stream<FilteredExerciseState> _mapSearchedToState(String searchTerm) async* {}
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
