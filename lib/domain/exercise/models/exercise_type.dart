import 'package:fitnick/domain/exercise/models/name.dart';
import 'package:flutter/foundation.dart';

class ExerciseType extends Name {
  const ExerciseType._({@required String name}) : super(name);

  static const warmUp = ExerciseType._(name: "Warm Up");
  static const cardio = ExerciseType._(name: "Cardio");
  static const strength = ExerciseType._(name: "Strength");
  static const stretching = ExerciseType._(name: "Stretching");

  static const all = [warmUp, cardio, strength, stretching];

  @override
  List<Object> get props => [name];
  @override
  String toString() {
    return "Exercise Type : $name";
  }
}
