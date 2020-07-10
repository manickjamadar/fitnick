import 'package:fitnick/domain/exercise/models/name.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part "exercise_level.g.dart";

@JsonSerializable()
class ExerciseLevel extends Name {
  const ExerciseLevel({@required String name}) : super(name);

  static const beginner = ExerciseLevel(name: "Beginner");
  static const intermediate = ExerciseLevel(name: "Intermediate");
  static const advanced = ExerciseLevel(name: "Advanced");

  static const all = [beginner, intermediate, advanced];
  factory ExerciseLevel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseLevelFromJson(json);
  Map<String, dynamic> toJson() => _$ExerciseLevelToJson(this);
  @override
  List<Object> get props => [name];
  @override
  String toString() {
    return "Exercise Level : $name";
  }
}
