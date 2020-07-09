import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class ExerciseType extends Equatable {
  final String name;

  const ExerciseType._({@required this.name});

  static const warmUp = ExerciseType._(name: "Warm Up");
  static const cardio = ExerciseType._(name: "Cardio");
  static const strength = ExerciseType._(name: "Strength");
  static const stretching = ExerciseType._(name: "Stretching");

  @override
  List<Object> get props => [name];
  @override
  String toString() {
    return "Exercise Type : $name";
  }
}
