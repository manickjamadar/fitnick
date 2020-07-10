import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'name.dart';

part 'exercise_tool.g.dart';

@JsonSerializable()
class ExerciseTool extends Name {
  const ExerciseTool({@required String name}) : super(name);

  static const bodyWeight = ExerciseTool(name: "Body Weight");
  static const pushUpBar = ExerciseTool(name: "Push Up Bar");
  static const miniBand = ExerciseTool(name: "Mini Band");

  static const all = [bodyWeight, pushUpBar, miniBand];
  factory ExerciseTool.fromJson(Map<String, dynamic> json) =>
      _$ExerciseToolFromJson(json);
  Map<String, dynamic> toJson() => _$ExerciseToolToJson(this);
  @override
  List<Object> get props => [name];
  @override
  String toString() {
    return "Exercise Tool : $name";
  }
}
