import 'package:fitnick/application/workout/workout_hub/workout_hub_bloc.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/presentation/screens/home/widgets/workout/workout_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkoutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutHubBloc, WorkoutHubState>(
        builder: (context, state) {
      return state.when(
          loading: buildWorkoutLoading,
          loaded: buildWorkoutLoaded,
          loadedError: buildWorkoutLoadedError);
    });
  }

  Widget buildWorkoutLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildWorkoutLoaded(List<Workout> workouts) {
    return WorkoutListView(
      workouts: workouts,
    );
  }

  Widget buildWorkoutLoadedError(failure) {
    print(failure);
    return Center(
      child: Text("Workout Loading error"),
    );
  }
}
