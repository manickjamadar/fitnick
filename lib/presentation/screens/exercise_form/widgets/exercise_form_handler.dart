import 'package:fitnick/presentation/screens/exercise_form/widgets/selector.dart';
import 'package:flutter/material.dart';

class ExerciseFormHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(),
        Selector(
          label: "Level",
        ),
        Text("Tool"),
        Text("Type"),
        Text("Target"),
      ],
    );
  }
}
