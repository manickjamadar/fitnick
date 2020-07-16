import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'name.dart';

part 'exercise_tool.g.dart';

@JsonSerializable()
class ExerciseTool extends Name {
  const ExerciseTool({@required String name}) : super(name);

  static const bodyWeight = ExerciseTool(name: "No Equipment");
  static const parallettes = ExerciseTool(name: "Parallettes");
  static const miniBand = ExerciseTool(name: "Mini Band");
  static const dumbbell = ExerciseTool(name: "Dumbbell");
  static const barbell = ExerciseTool(name: "Barbell");
  static const dipBar = ExerciseTool(name: "Dip Bar");
  static const rings = ExerciseTool(name: "Rings");
  static const pullUpBar = ExerciseTool(name: "Pull Up Bar");
  static const weightedVest = ExerciseTool(name: "Weighted Vest");
  static const resistanceTube = ExerciseTool(name: "Resistance Tube");
  static const medicineBall = ExerciseTool(name: "Medicine Ball");

  static const all = [
    bodyWeight,
    parallettes,
    miniBand,
    dumbbell,
    barbell,
    dipBar,
    rings,
    pullUpBar,
    weightedVest,
    resistanceTube,
    medicineBall
  ];
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
