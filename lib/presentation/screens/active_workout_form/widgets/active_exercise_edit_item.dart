import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:flutter/material.dart';

class ActiveExerciseEditItem extends StatelessWidget {
  final ActiveExercise activeExercise;
  final void Function() onRemove;
  const ActiveExerciseEditItem(
      {Key key, @required this.activeExercise, this.onRemove})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(activeExercise.exercise.name.safeValue),
        subtitle: Text("${activeExercise.sets.length} sets"),
        trailing: IconButton(
          icon: Icon(Icons.clear, color: Colors.red),
          onPressed: () {
            if (onRemove != null) {
              onRemove();
            }
          },
        ),
      ),
    );
  }
}
