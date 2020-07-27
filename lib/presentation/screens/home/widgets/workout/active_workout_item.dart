import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:flutter/material.dart';

class ActiveWorkoutItem extends StatelessWidget {
  final ActiveWorkout activeWorkout;

  const ActiveWorkoutItem({Key key, @required this.activeWorkout})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: ListTile(
        title: Text(activeWorkout.name.safeValue),
      ),
    );
  }
}
