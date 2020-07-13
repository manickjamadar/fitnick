import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/presentation/screens/home/widgets/workout/workout_item.dart';
import 'package:flutter/material.dart';

class WorkoutListView extends StatelessWidget {
  final List<Workout> workouts;

  const WorkoutListView({Key key, @required this.workouts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return workouts.isEmpty ? buildWorkoutEmpty() : buildWorkoutList();
  }

  Widget buildWorkoutList() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          child: WorkoutItem(
            workout: workouts[index],
          ),
        );
      },
      itemCount: workouts.length,
    );
  }

  Widget buildWorkoutEmpty() {
    return Center(
      child: Text("No Workout Available"),
    );
  }
}
