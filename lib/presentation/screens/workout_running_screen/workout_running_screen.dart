import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:flutter/material.dart';

class WorkoutRunningScreen extends StatelessWidget {
  final Workout workout;

  const WorkoutRunningScreen({Key key, @required this.workout})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(workout.name.safeValue),
      ),
    );
  }

  static const String routeName = "/workout_running";
  static Widget generateRoute({@required Workout workout}) {
    return WorkoutRunningScreen(workout: workout);
  }
}
