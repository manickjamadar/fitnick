import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/exercise/models/sub_models/name.dart';
import 'package:flutter/material.dart';
import '../../../core/helpers/string_extension.dart';

class ExerciseRunnerViewer extends StatelessWidget {
  final Exercise exercise;

  const ExerciseRunnerViewer({Key key, @required this.exercise})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(exercise.name.safeValue.capitalize(),
            style: TextStyle(
                color: Colors.indigo,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        buildSpace(),
        buildTitle("Level"),
        buildOptionName(exercise.levels.first),
        buildTitle("Tools"),
        buildMultipleOption(exercise.tools),
        buildTitle("Type"),
        buildMultipleOption(exercise.types),
        buildTitle("Muscle Involved"),
        buildMultipleOption(
            [...exercise.primaryTargets, ...exercise.secondaryTargets])
      ],
    );
  }

  Widget buildMultipleOption<T extends Name>(List<T> options) {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: options.map((o) => buildOptionName(o)).toList(),
      ),
    );
  }

  Widget buildOptionName<T extends Name>(T option,
      {Color color = Colors.blue}) {
    return Container(
      child: Text(option.name, style: TextStyle(color: Colors.white)),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(4), color: color),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
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
