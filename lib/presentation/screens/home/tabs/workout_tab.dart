import 'package:fitnick/application/workout/workout_actor/workout_actor_bloc.dart';
import 'package:fitnick/application/workout/workout_hub/workout_hub_bloc.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/screens/home/widgets/workout/active_workout_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "../../../../application/active_workout/active_workout_hub/active_workout_hub_cubit.dart";

class WorkoutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<WorkoutActorBloc, WorkoutActorState>(
      listener: (_, state) {
        state.maybeWhen(
            orElse: () {},
            success: (message) {
              showMessage(context, message: message, type: SuccessMessage());
              BlocProvider.of<WorkoutHubBloc>(context)
                  .add(WorkoutHubEvent.refreshed());
            },
            error: (message) =>
                showMessage(context, message: message, type: ErrorMessage()));
      },
      child: BlocBuilder<ActiveWorkoutHubCubit, ActiveWorkoutHubState>(
        builder: (_, state) {
          return state.when(
              loading: buildWorkoutLoading,
              loaded: buildWorkoutLoaded,
              loadedError: buildWorkoutLoadedError);
        },
      ),
    );
  }

  Widget buildWorkoutLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildWorkoutLoaded(List<ActiveWorkout> activeWorkouts) {
    return ActiveWorkoutListView(
      activeWorkouts: activeWorkouts,
    );
  }

  Widget buildWorkoutLoadedError(failure) {
    print(failure);
    return Center(
      child: Text("Workout Loading error"),
    );
  }
}
