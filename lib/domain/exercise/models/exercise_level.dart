import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ExerciseLevel extends Equatable {
  final String name;

  const ExerciseLevel._({@required this.name});

  static const beginner = ExerciseLevel._(name: "Beginner");
  static const intermediate = ExerciseLevel._(name: "Intermediate");
  static const advanced = ExerciseLevel._(name: "Advanced");

  @override
  List<Object> get props => [name];
  @override
  String toString() {
    return "Exercise Level : $name";
  }
}
