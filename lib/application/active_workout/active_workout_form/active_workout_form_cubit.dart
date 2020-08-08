import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/active_exercise/facade/i_active_exercise_facade.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/domain/active_workout/facade/i_active_workout_facade.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/domain/workout/value_object/workout_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "../../../application/core/helpers/list_extension.dart";
part 'active_workout_form_state.dart';
part 'active_workout_form_cubit.freezed.dart';

class ActiveWorkoutFormCubit extends Cubit<ActiveWorkoutFormState> {
  final IActiveExerciseFacade activeExerciseFacade;
  final IActiveWorkoutFacade activeWorkoutFacade;
  ActiveWorkoutFormCubit(
      {@required this.activeWorkoutFacade, @required this.activeExerciseFacade})
      : super(ActiveWorkoutFormState.initial());

  List<ActiveExercise> _creatableActiveExercises = [];
  List<ActiveExercise> _removableActiveExercises = [];
  List<ActiveExercise> _updatableActiveExercises = [];

  //events
  Future<void> init(
      {@required Option<ActiveWorkout> activeWorkoutOption}) async {
    activeWorkoutOption.fold(
        () {},
        (ActiveWorkout activeWorkout) => emit(state.copyWith(
            activeWorkout: activeWorkout, isEditing: true, addStatus: none())));
  }

  Future<void> nameChanged({@required String name}) async {
    emit(state.copyWith(
        addStatus: none(),
        activeWorkout: state.activeWorkout.copyWith(name: WorkoutName(name))));
  }

  Future<void> exerciseAdded({@required Exercise exercise}) async {
    final newActiveExercises = [
      ...state.activeWorkout.activeExercises,
      _addCreatableActiveExercise(exercise)
    ];
    emit(state.copyWith(
        addStatus: none(),
        activeWorkout:
            state.activeWorkout.copyWith(activeExercises: newActiveExercises)));
  }

  Future<void> activeExerciseRemoved(
      {@required ActiveExercise activeExercise}) async {
    _removeActiveExercise(activeExercise);
    final newActiveExercises = state.activeWorkout.activeExercises
        .where((e) => e.id != activeExercise.id)
        .toList();
    emit(state.copyWith(
        addStatus: none(),
        activeWorkout:
            state.activeWorkout.copyWith(activeExercises: newActiveExercises)));
  }

  Future<void> activeExerciseUpdated(
      {@required ActiveExercise activeExercise}) async {
    _updateActiveExercise(activeExercise);
    final newActiveExercises = state.activeWorkout.activeExercises.map((e) {
      if (e.id == activeExercise.id) {
        return activeExercise;
      }
      return e;
    }).toList();
    emit(state.copyWith(
        addStatus: none(),
        activeWorkout:
            state.activeWorkout.copyWith(activeExercises: newActiveExercises)));
  }

  Future<void> activeExerciseReordered(
      {@required int oldIndex, @required int newIndex}) async {
    emit(state.copyWith(
        activeWorkout: state.activeWorkout.copyWith(
            activeExercises: state.activeWorkout.activeExercises
                .reorder(oldIndex, newIndex)),
        addStatus: none()));
  }

  Future<void> saved() async {
    emit(state.copyWith(isAdding: true, addStatus: none()));
    Either<WorkoutFailure, Unit> failureOrSuccess;
    if (state.activeWorkout.isValid) {
      await _saveCreatableActiveExercises();
      await _removeRemovableActiveExercises();
      await _updateUpdatableActiveExercises();
      failureOrSuccess = state.isEditing
          ? await activeWorkoutFacade.update(state.activeWorkout)
          : await activeWorkoutFacade.create(state.activeWorkout);
    }
    emit(state.copyWith(
        shouldShowErrorMessages: true,
        isAdding: false,
        addStatus: optionOf(failureOrSuccess)));
  }

  void _removeActiveExercise(ActiveExercise activeExercise) {
    if (state.isEditing && !_isPresentInCreatable(activeExercise)) {
      _addRemovableActiveExercise(activeExercise);
    } else {
      _removeFromCreatableActiveExercises(activeExercise.id);
    }
  }

  void _updateActiveExercise(ActiveExercise activeExercise) {
    if (state.isEditing && !_isPresentInCreatable(activeExercise)) {
      _addUpdtableActiveExercise(activeExercise);
    } else {
      _replaceFromCreatableActiveExercises(activeExercise);
    }
  }

  bool _isPresentInCreatable(ActiveExercise activeExercise) {
    return _creatableActiveExercises.any((e) => e.id == activeExercise.id);
  }

  ActiveExercise _addCreatableActiveExercise(Exercise exercise) {
    final activeExercise = ActiveExercise.fromExercise(exercise);
    _creatableActiveExercises.add(activeExercise);
    return activeExercise;
  }

  void _removeFromCreatableActiveExercises(UniqueId activeExerciseId) {
    _creatableActiveExercises.removeWhere((e) => e.id == activeExerciseId);
  }

  void _replaceFromCreatableActiveExercises(ActiveExercise activeExercise) {
    _creatableActiveExercises =
        _creatableActiveExercises.map((oldActiveExercise) {
      if (activeExercise.id == oldActiveExercise.id) {
        return activeExercise;
      }
      return oldActiveExercise;
    }).toList();
  }

  ActiveExercise _addRemovableActiveExercise(ActiveExercise activeExercise) {
    _removableActiveExercises.add(activeExercise);
    return activeExercise;
  }

  ActiveExercise _addUpdtableActiveExercise(ActiveExercise activeExercise) {
    _updatableActiveExercises.add(activeExercise);
    return activeExercise;
  }

  Future<void> _removeRemovableActiveExercises() async {
    _removableActiveExercises.forEach((activeExercise) async {
      await activeExerciseFacade.delete(activeExercise.id);
    });
  }

  Future<void> _updateUpdatableActiveExercises() async {
    _updatableActiveExercises.forEach((activeExercise) async {
      await activeExerciseFacade.update(activeExercise);
    });
  }

  Future<void> _saveCreatableActiveExercises() async {
    _creatableActiveExercises.forEach((activeExercise) async {
      await activeExerciseFacade.create(activeExercise);
    });
  }
}
