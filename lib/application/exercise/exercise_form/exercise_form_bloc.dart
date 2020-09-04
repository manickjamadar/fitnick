import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/application/active_workout/active_workout_hub/active_workout_hub_cubit.dart';
import 'package:fitnick/application/core/helpers/remove_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/exercise/facade/i_exercise_facade.dart';
import '../../../domain/exercise/failure/exercise_failure.dart';
import '../../../domain/exercise/models/exercise.dart';
import '../../../domain/exercise/models/sub_models/exercise_level.dart';
import '../../../domain/exercise/models/sub_models/exercise_target.dart';
import '../../../domain/exercise/models/sub_models/exercise_tool.dart';
import '../../../domain/exercise/models/sub_models/exercise_type.dart';
import '../../../domain/exercise/value_object/exercise_name.dart';

part "exercise_form_bloc.freezed.dart";
part 'exercise_form_event.dart';
part 'exercise_form_state.dart';

class ExerciseFormBloc extends Bloc<ExerciseFormEvent, ExerciseFormState> {
  final IExerciseFacade iExerciseFacade;
  final ActiveWorkoutHubCubit activeWorkoutHubCubit;
  ExerciseFormBloc(
      {@required this.iExerciseFacade, @required this.activeWorkoutHubCubit})
      : super(ExerciseFormState.initial());

  @override
  void onChange(Change<ExerciseFormState> change) {
    change.nextState.addStatus.fold(
        () => null,
        (failureOrSuccess) => failureOrSuccess.fold((failure) {}, (success) {
              activeWorkoutHubCubit.refreshed();
            }));
    super.onChange(change);
  }

  @override
  Stream<ExerciseFormState> mapEventToState(
    ExerciseFormEvent event,
  ) async* {
    yield* event.when(
        init: _bindInitToState,
        nameChanged: _bindNameChangedToState,
        levelsChanged: _bindLevelsChangedToState,
        toolsChanged: _bindToolsChangedToState,
        typesChanged: _bindTypesChangedToState,
        primaryTargetsChanged: _bindPrimaryTargetsToState,
        secondaryTargetsChanged: _bindSecondaryTargetsToState,
        thumbnailPathChanged: _bindThumbnailPathChangedToState,
        videoPathChanged: _bindVideoPathChangedToState,
        added: _bindExerciseAddedToState);
  }

  Stream<ExerciseFormState> _bindInitToState(
      Option<Exercise> exerciseOption) async* {
    yield exerciseOption.fold(
        () => state,
        (Exercise exercise) =>
            state.copyWith(exercise: exercise, isEditing: true));
  }

  Stream<ExerciseFormState> _bindNameChangedToState(String name) async* {
    yield state.copyWith(
        exercise: state.exercise.copyWith(name: ExerciseName(name)),
        addStatus: none());
  }

  Stream<ExerciseFormState> _bindLevelsChangedToState(
      List<ExerciseLevel> levels) async* {
    yield state.copyWith(
        exercise: state.exercise.copyWith(levels: [...levels]),
        addStatus: none());
  }

  Stream<ExerciseFormState> _bindToolsChangedToState(
      List<ExerciseTool> tools) async* {
    yield state.copyWith(
        exercise: state.exercise.copyWith(tools: [...tools]),
        addStatus: none());
  }

  Stream<ExerciseFormState> _bindTypesChangedToState(
      List<ExerciseType> types) async* {
    yield state.copyWith(
        exercise: state.exercise.copyWith(types: [...types]),
        addStatus: none());
  }

  Stream<ExerciseFormState> _bindPrimaryTargetsToState(
      List<ExerciseTarget> primaryTargets) async* {
    yield state.copyWith(
        exercise: state.exercise.copyWith(primaryTargets: [...primaryTargets]),
        addStatus: none());
  }

  Stream<ExerciseFormState> _bindSecondaryTargetsToState(
      List<ExerciseTarget> secondaryTargets) async* {
    yield state.copyWith(
        exercise:
            state.exercise.copyWith(secondaryTargets: [...secondaryTargets]),
        addStatus: none());
  }

  Stream<ExerciseFormState> _bindThumbnailPathChangedToState(
      String path) async* {
    yield state.copyWith(
        exercise: state.exercise.copyWith(thumbnailPath: Some(path)),
        addStatus: none());
  }

  Stream<ExerciseFormState> _bindVideoPathChangedToState(String path) async* {
    await state.exercise.videoPath.fold(() => null, (oldPath) async {
      try {
        await removeFile(oldPath);
      } catch (error) {
        print("removing video error");
      }
    });
    yield state.copyWith(
        exercise: state.exercise.copyWith(videoPath: Some(path)),
        addStatus: none());
  }

  Stream<ExerciseFormState> _bindExerciseAddedToState() async* {
    yield state.copyWith(isAdding: true, addStatus: none());
    Either<ExerciseFailure, Unit> failureOrSuccess;
    if (state.exercise.isValid) {
      failureOrSuccess = state.isEditing
          ? await iExerciseFacade.updateExercise(state.exercise)
          : await iExerciseFacade.createExercise(state.exercise);
    }
    yield state.copyWith(
        shouldShowErrorMessages: true,
        isAdding: false,
        addStatus: optionOf(failureOrSuccess));
  }
}
