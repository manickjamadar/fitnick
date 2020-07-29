import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/domain/active_workout/facade/i_active_workout_facade.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/domain/workout/value_object/workout_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_workout_form_state.dart';
part 'active_workout_form_cubit.freezed.dart';

class ActiveWorkoutFormCubit extends Cubit<ActiveWorkoutFormState> {
  final IActiveWorkoutFacade activeWorkoutFacade;
  ActiveWorkoutFormCubit({@required this.activeWorkoutFacade})
      : super(ActiveWorkoutFormState.initial());

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

  Future<void> activeExerciseAdded(
      {@required ActiveExercise activeExercise}) async {
    //TODO: implement logic
    throw UnimplementedError();
  }

  Future<void> activeExerciseRemoved(
      {@required ActiveExercise activeExercise}) async {
    //TODO: implement logic
    throw UnimplementedError();
  }

  Future<void> activeExerciseReordered(
      {@required int oldIndex, @required int newIndex}) async {
    //TODO: implement logic
    throw UnimplementedError();
  }

  Future<void> saved() async {
    emit(state.copyWith(isAdding: true, addStatus: none()));
    Either<WorkoutFailure, Unit> failureOrSuccess;
    if (state.activeWorkout.isValid) {
      failureOrSuccess = state.isEditing
          ? await activeWorkoutFacade.update(state.activeWorkout)
          : await activeWorkoutFacade.create(state.activeWorkout);
    }
    emit(state.copyWith(
        shouldShowErrorMessages: true,
        isAdding: false,
        addStatus: optionOf(failureOrSuccess)));
  }
}
