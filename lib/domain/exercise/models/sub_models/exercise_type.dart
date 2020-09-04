import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'name.dart';

part "exercise_type.g.dart";

@JsonSerializable()
class ExerciseType extends Name {
  const ExerciseType({@required String name}) : super(name);

  static const warmUp = ExerciseType(name: "Warm Up");
  static const endurance = ExerciseType(name: "Endurance");
  static const strength = ExerciseType(name: "Strength");
  static const flexibility = ExerciseType(name: "Flexibility");
  static const yoga = ExerciseType(name: "Yoga");

  static const all = [warmUp, strength, yoga, endurance, flexibility];
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
