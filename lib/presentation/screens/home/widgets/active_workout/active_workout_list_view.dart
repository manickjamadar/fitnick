import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/presentation/screens/home/widgets/active_workout/active_workout_item.dart';
import 'package:flutter/material.dart';

class ActiveWorkoutListView extends StatelessWidget {
  final List<ActiveWorkout> activeWorkouts;

  const ActiveWorkoutListView({Key key, @required this.activeWorkouts})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return activeWorkouts.isEmpty
        ? buildNoActiveWorkout()
        : buildActiveWorkoutList();
  }

  Widget buildNoActiveWorkout() {
    return Center(child: Text("No Workout available"));
  }

  ListView buildActiveWorkoutList() {
    return ListView.builder(
      itemBuilder: (_, index) {
        return ActiveWorkoutItem(
          activeWorkout: activeWorkouts[index],
        );
      },
      itemCount: activeWorkouts.length,
    );
  }
}
