import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:flutter/material.dart';

class ActiveExerciseItem extends StatelessWidget {
  final ActiveExercise activeExercise;

  const ActiveExerciseItem({Key key, @required this.activeExercise})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          activeExercise.exercise.name.safeValue,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("${activeExercise.sets.length} sets"),
      ),
    );
  }
}
