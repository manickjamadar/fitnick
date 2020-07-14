import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:flutter/material.dart';

class ExerciseRunnerViewer extends StatelessWidget {
  final Exercise exercise;

  const ExerciseRunnerViewer({Key key, @required this.exercise})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(exercise.name.safeValue.toUpperCase(),
            style: TextStyle(
                color: Colors.indigo,
                fontSize: 40,
                fontWeight: FontWeight.bold)),
        buildSpace(),
        buildSpace(),
        buildTitle("Level"),
        buildSpace(),
        Text(exercise.level.name),
        buildSpace(),
        buildTitle("Tool"),
        buildSpace(),
        Text(exercise.tool.name),
        buildSpace(),
        buildTitle("Type"),
        buildSpace(),
        Text(exercise.type.name),
        buildSpace(),
        buildTitle("Muscle"),
        buildSpace(),
        Text(exercise.target.name),
        buildSpace(),
      ],
    );
  }

  Widget buildTitle(String title) {
    return Text(title, style: TextStyle(fontWeight: FontWeight.bold));
  }

  Widget buildSpace() {
    return SizedBox(
      height: 10,
    );
  }
}
