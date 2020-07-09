import 'package:fitnick/domain/exercise/models/name.dart';
import 'package:flutter/material.dart';

class ExerciseLevel extends Name {
  const ExerciseLevel._({@required String name}) : super(name);

  static const beginner = ExerciseLevel._(name: "Beginner");
  static const intermediate = ExerciseLevel._(name: "Intermediate");
  static const advanced = ExerciseLevel._(name: "Advanced");

  static const all = [beginner, intermediate, advanced];

  @override
  List<Object> get props => [name];
  @override
  String toString() {
    return "Exercise Level : $name";
  }
}
