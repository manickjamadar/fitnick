import 'package:fitnick/domain/exercise/models/name.dart';
import 'package:flutter/foundation.dart';

class ExerciseType extends Name {
  const ExerciseType({@required String name}) : super(name);

  static const warmUp = ExerciseType(name: "Warm Up");
  static const cardio = ExerciseType(name: "Cardio");
  static const strength = ExerciseType(name: "Strength");
  static const stretching = ExerciseType(name: "Stretching");

  static const all = [warmUp, cardio, strength, stretching];

  @override
  List<Object> get props => [name];
  @override
  String toString() {
    return "Exercise Type : $name";
  }
}
