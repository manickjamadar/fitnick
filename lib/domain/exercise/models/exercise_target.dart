import 'package:equatable/equatable.dart';
import 'package:fitnick/domain/exercise/models/exercise_target_category.dart';
import 'package:flutter/foundation.dart';

class ExerciseTarget extends Equatable {
  final String name;
  final ExerciseTargetCategory category;
  const ExerciseTarget._({@required this.name, @required this.category});
//upper body
  static const biceps = ExerciseTarget._(
      name: "Biceps", category: ExerciseTargetCategory.upperBody);
  static const triceps = ExerciseTarget._(
      name: "Triceps", category: ExerciseTargetCategory.upperBody);
  static const shoulder = ExerciseTarget._(
      name: "Shoulder", category: ExerciseTargetCategory.upperBody);
  static const fullChest = ExerciseTarget._(
      name: "Full Chest", category: ExerciseTargetCategory.upperBody);
  static const upperChest = ExerciseTarget._(
      name: "upper Chest", category: ExerciseTargetCategory.upperBody);
  static const middleChest = ExerciseTarget._(
      name: "middle Chest", category: ExerciseTargetCategory.upperBody);
  static const lowerChest = ExerciseTarget._(
      name: "lower Chest", category: ExerciseTargetCategory.upperBody);
  static const lats = ExerciseTarget._(
      name: "Lats", category: ExerciseTargetCategory.upperBody);
  static const forearm = ExerciseTarget._(
      name: "Forearm", category: ExerciseTargetCategory.upperBody);
  static const traps = ExerciseTarget._(
      name: "Traps", category: ExerciseTargetCategory.upperBody);
  static const neck = ExerciseTarget._(
      name: "Neck", category: ExerciseTargetCategory.upperBody);
//lower body
  static const thigh = ExerciseTarget._(
      name: "Thigh", category: ExerciseTargetCategory.lowerBody);
  static const leg =
      ExerciseTarget._(name: "Leg", category: ExerciseTargetCategory.lowerBody);
  static const calf = ExerciseTarget._(
      name: "Calf", category: ExerciseTargetCategory.lowerBody);
  static const glute = ExerciseTarget._(
      name: "Glute", category: ExerciseTargetCategory.lowerBody);
  static const hamstring = ExerciseTarget._(
      name: "Hamstring", category: ExerciseTargetCategory.lowerBody);
  static const hip =
      ExerciseTarget._(name: "Hip", category: ExerciseTargetCategory.lowerBody);
//core
  static const lowerAbs = ExerciseTarget._(
      name: "Lower Abs", category: ExerciseTargetCategory.core);
  static const upperAbs = ExerciseTarget._(
      name: "Upper Abs", category: ExerciseTargetCategory.core);
  static const fullAbs =
      ExerciseTarget._(name: "Full Abs", category: ExerciseTargetCategory.core);
  static const back =
      ExerciseTarget._(name: "Back", category: ExerciseTargetCategory.core);
  static const obliques =
      ExerciseTarget._(name: "Obliques", category: ExerciseTargetCategory.core);
  @override
  List<Object> get props => [name, category];
  @override
  String toString() {
    return "Exercise Target : $name , Category: ${category.name}";
  }
}
