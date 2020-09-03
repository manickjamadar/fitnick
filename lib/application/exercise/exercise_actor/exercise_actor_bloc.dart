import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:fitnick/application/active_workout/active_workout_hub/active_workout_hub_cubit.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/domain/active_exercise/facade/i_active_exercise_facade.dart';
import 'package:fitnick/domain/exercise/facade/i_exercise_facade.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_actor_event.dart';
part 'exercise_actor_state.dart';
part 'exercise_actor_bloc.freezed.dart';

class ExerciseActorBloc extends Bloc<ExerciseActorEvent, ExerciseActorState> {
  final IExerciseFacade exerciseFacade;
  final ExerciseHubBloc exerciseHubBloc;
  final ActiveWorkoutHubCubit activeWorkoutHubCubit;
  final IActiveExerciseFacade activeExerciseFacade;
  ExerciseActorBloc(
      {@required this.exerciseFacade,
      @required this.exerciseHubBloc,
      @required this.activeWorkoutHubCubit,
      @required this.activeExerciseFacade})
      : super(ExerciseActorState.initial());

  @override
  void onChange(Change<ExerciseActorState> change) {
    exerciseHubBloc.add(ExerciseHubEvent.refreshed());
    activeWorkoutHubCubit.refreshed();
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
    yield* failureOrSuccess.fold((failure) async* {
      yield ExerciseActorState.error(
          message: "${exercise.name.safeValue} deleted failed");
    }, (r) async* {
      await _onExeciseDeleteSuccess(exercise);
      yield ExerciseActorState.success(
          message: "${exercise.name.safeValue} deleted successfully");
    });
  }

  Future<void> _onExeciseDeleteSuccess(Exercise exercise) async {
    final failureOrSuccess =
        await activeExerciseFacade.findByExerciseId(exercise.id);
    failureOrSuccess.fold((l) {}, (activeExercises) {
      activeExercises.forEach((ae) async {
        await activeExerciseFacade.delete(ae.id);
      });
    });
  }

  Stream<ExerciseActorState> _mapReordredToState() {}
}
