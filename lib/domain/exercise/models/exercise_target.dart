import 'package:fitnick/domain/exercise/models/exercise_target_category.dart';
import 'package:fitnick/domain/exercise/models/name.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part "exercise_target.g.dart";

@JsonSerializable(explicitToJson: true)
class ExerciseTarget extends Name {
  final ExerciseTargetCategory category;
  const ExerciseTarget({@required String name, @required this.category})
      : super(name);
//upper body
  static const biceps = ExerciseTarget(
      name: "Biceps", category: ExerciseTargetCategory.upperBody);
  static const triceps = ExerciseTarget(
      name: "Triceps", category: ExerciseTargetCategory.upperBody);
  static const shoulder = ExerciseTarget(
      name: "Shoulder", category: ExerciseTargetCategory.upperBody);
  static const fullChest = ExerciseTarget(
      name: "Full Chest", category: ExerciseTargetCategory.upperBody);
  static const upperChest = ExerciseTarget(
      name: "upper Chest", category: ExerciseTargetCategory.upperBody);
  static const middleChest = ExerciseTarget(
      name: "middle Chest", category: ExerciseTargetCategory.upperBody);
  static const lowerChest = ExerciseTarget(
      name: "lower Chest", category: ExerciseTargetCategory.upperBody);
  static const lats =
      ExerciseTarget(name: "Lats", category: ExerciseTargetCategory.upperBody);
  static const forearm = ExerciseTarget(
      name: "Forearm", category: ExerciseTargetCategory.upperBody);
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
  static const fullAbs =
      ExerciseTarget(name: "Full Abs", category: ExerciseTargetCategory.core);
  static const back =
      ExerciseTarget(name: "Back", category: ExerciseTargetCategory.core);
  static const obliques =
      ExerciseTarget(name: "Obliques", category: ExerciseTargetCategory.core);
  static const all = [
    biceps,
    triceps,
    shoulder,
    fullChest,
    upperChest,
    middleChest,
    lowerChest,
    lats,
    forearm,
    traps,
    neck,
    leg,
    calf,
    glute,
    hamstring,
    hip,
    fullAbs,
    lowerAbs,
    upperAbs,
    obliques,
    back
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
