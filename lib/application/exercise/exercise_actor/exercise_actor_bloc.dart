import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/domain/exercise/facade/i_exercise_facade.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_actor_event.dart';
part 'exercise_actor_state.dart';
part 'exercise_actor_bloc.freezed.dart';

class ExerciseActorBloc extends Bloc<ExerciseActorEvent, ExerciseActorState> {
  final IExerciseFacade exerciseFacade;
  final ExerciseHubBloc exerciseHubBloc;
  ExerciseActorBloc(
      {@required this.exerciseFacade, @required this.exerciseHubBloc})
      : super(ExerciseActorState.initial());

  @override
  void onChange(Change<ExerciseActorState> change) {
    exerciseHubBloc.add(ExerciseHubEvent.refreshed());
    super.onChange(change);
  }

  @override
  Stream<ExerciseActorState> mapEventToState(
    ExerciseActorEvent event,
  ) async* {
    yield* event.when(
        deleted: _mapDeletedToState, reordered: _mapReordredToState);
  }

  Stream<ExerciseActorState> _mapDeletedToState(Exercise exercise) async* {
    final failureOrSuccess = await exerciseFacade.deleteExercise(exercise.id);
    yield failureOrSuccess.fold(
        (failure) => ExerciseActorState.error(
            message: "${exercise.name.safeValue} deleted failed"),
        (r) => ExerciseActorState.success(
            message: "${exercise.name.safeValue} deleted successfully"));
  }

  Stream<ExerciseActorState> _mapReordredToState() {}
}
