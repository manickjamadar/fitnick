import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'name.dart';

part "exercise_type.g.dart";

@JsonSerializable()
class ExerciseType extends Name {
  const ExerciseType({@required String name}) : super(name);

  static const warmUp = ExerciseType(name: "Warm Up");
  static const cardio = ExerciseType(name: "Cardio");
  static const strength = ExerciseType(name: "Strength");
  static const stretching = ExerciseType(name: "Stretching");

  static const all = [warmUp, cardio, strength, stretching];
  factory ExerciseType.fromJson(Map<String, dynamic> json) =>
      _$ExerciseTypeFromJson(json);
  Map<String, dynamic> toJson() => _$ExerciseTypeToJson(this);
  @override
  List<Object> get props => [name];
  @override
  String toString() {
    return "Exercise Type : $name";
  }
}
