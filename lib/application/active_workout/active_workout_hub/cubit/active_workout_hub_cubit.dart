import 'package:bloc/bloc.dart';
import 'package:fitnick/domain/active_workout/facade/i_active_workout_facade.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_workout_hub_state.dart';
part 'active_workout_hub_cubit.freezed.dart';

class ActiveWorkoutHubCubit extends Cubit<ActiveWorkoutHubState> {
  final IActiveWorkoutFacade activeWorkoutFacade;
  ActiveWorkoutHubCubit({@required this.activeWorkoutFacade})
      : super(ActiveWorkoutHubState.loading()) {
    _init();
  }

  //events
  Future<void> _init() async {
    emit(ActiveWorkoutHubState.loading());
    await refreshed();
  }

  Future<void> refreshed() async {
    final failureOrSuccess = await activeWorkoutFacade.findAll();
    failureOrSuccess.fold((WorkoutFailure failure) {
      emit(ActiveWorkoutHubState.loadedError(failure: failure));
    }, (List<ActiveWorkout> workouts) {
      emit(ActiveWorkoutHubState.loaded(workouts));
    });
  }
}
