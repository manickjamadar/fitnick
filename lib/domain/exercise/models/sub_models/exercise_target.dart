import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'exercise_target_category.dart';
import 'name.dart';

part "exercise_target.g.dart";

@JsonSerializable(explicitToJson: true)
class ExerciseTarget extends Name {
  final ExerciseTargetCategory category;
  const ExerciseTarget({@required String name, @required this.category})
      : super(name);
//upper body
  static const biceps = ExerciseTarget(
      name: "Biceps", category: ExerciseTargetCategory.upperBody);
//upper body
  static const fullBody = ExerciseTarget(
      name: "Full Body", category: ExerciseTargetCategory.fullBody);
  static const triceps = ExerciseTarget(
      name: "Triceps", category: ExerciseTargetCategory.upperBody);
  static const shoulder = ExerciseTarget(
      name: "Shoulder", category: ExerciseTargetCategory.upperBody);
  static const rearShoulder = ExerciseTarget(
      name: "Rear Shoulder", category: ExerciseTargetCategory.upperBody);
  static const middleShoulder = ExerciseTarget(
      name: "Middle Shoulder", category: ExerciseTargetCategory.upperBody);
  static const frontShoulder = ExerciseTarget(
      name: "Front Shoulder", category: ExerciseTargetCategory.upperBody);
  static const chest =
      ExerciseTarget(name: "Chest", category: ExerciseTargetCategory.upperBody);
  static const upperChest = ExerciseTarget(
      name: "Upper Chest", category: ExerciseTargetCategory.upperBody);
  static const middleChest = ExerciseTarget(
      name: "Middle Chest", category: ExerciseTargetCategory.upperBody);
  static const lowerChest = ExerciseTarget(
      name: "Lower Chest", category: ExerciseTargetCategory.upperBody);
  static const lats =
      ExerciseTarget(name: "Lats", category: ExerciseTargetCategory.upperBody);
  static const forearm = ExerciseTarget(
      name: "Forearm", category: ExerciseTargetCategory.upperBody);
  static const back =
      ExerciseTarget(name: "Back", category: ExerciseTargetCategory.upperBody);
  static const traps =
      ExerciseTarget(name: "Traps", category: ExerciseTargetCategory.upperBody);
  static const neck =
      ExerciseTarget(name: "Neck", category: ExerciseTargetCategory.upperBody);
//lower body
  static const leg =
      ExerciseTarget(name: "Leg", category: ExerciseTargetCategory.lowerBody);
  static const calf =
      ExerciseTarget(name: "Calf", category: ExerciseTargetCategory.lowerBody);
  static const glute =
      ExerciseTarget(name: "Glute", category: ExerciseTargetCategory.lowerBody);
  static const hamstring = ExerciseTarget(
      name: "Hamstring", category: ExerciseTargetCategory.lowerBody);
  static const hip =
      ExerciseTarget(name: "Hip", category: ExerciseTargetCategory.lowerBody);
//core
  static const lowerAbs =
      ExerciseTarget(name: "Lower Abs", category: ExerciseTargetCategory.core);
  static const upperAbs =
      ExerciseTarget(name: "Upper Abs", category: ExerciseTargetCategory.core);
  static const abs =
      ExerciseTarget(name: "Abs", category: ExerciseTargetCategory.core);
  static const obliques =
      ExerciseTarget(name: "Obliques", category: ExerciseTargetCategory.core);
  static const all = [
    fullBody,
    biceps,
    triceps,
    shoulder,
    rearShoulder,
    middleShoulder,
    frontShoulder,
    chest,
    upperChest,
    middleChest,
    lowerChest,
    lats,
    back,
    forearm,
    traps,
    neck,
    leg,
    calf,
    glute,
    hamstring,
    hip,
    abs,
    lowerAbs,
    upperAbs,
    obliques,
  ];
  factory ExerciseTarget.fromJson(Map<String, dynamic> json) =>
      _$ExerciseTargetFromJson(json);
  Map<String, dynamic> toJson() => _$ExerciseTargetToJson(this);
  @override
  List<Object> get props => [name, category];
  @override
  String toString() {
    return "Exercise Target : $name , Category: ${category.name}";
  }
}
