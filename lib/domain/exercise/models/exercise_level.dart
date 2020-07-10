import 'package:fitnick/domain/exercise/models/name.dart';
import 'package:flutter/material.dart';

class ExerciseLevel extends Name {
  const ExerciseLevel({@required String name}) : super(name);

  static const beginner = ExerciseLevel(name: "Beginner");
  static const intermediate = ExerciseLevel(name: "Intermediate");
  static const advanced = ExerciseLevel(name: "Advanced");

  static const all = [beginner, intermediate, advanced];

  @override
  List<Object> get props => [name];
  @override
  String toString() {
    return "Exercise Level : $name";
  }
}
