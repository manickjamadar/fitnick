import 'package:flutter/material.dart';

class ExerciseTitle extends StatelessWidget {
  final String title;

  const ExerciseTitle({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
    );
  }
}
