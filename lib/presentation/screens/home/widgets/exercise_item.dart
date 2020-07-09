import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:flutter/material.dart';

class ExerciseItem extends StatelessWidget {
  final Exercise exercise;

  const ExerciseItem({Key key, @required this.exercise}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return exercise.failureOption().fold(
        () => ListTile(
                title: Text(
              exercise.name.safeValue,
            )),
        (a) => Container(
              color: Colors.red,
              height: 30,
              child: Text(
                "Exercise Item Error",
                style: TextStyle(color: Colors.white),
              ),
            ));
  }
}
