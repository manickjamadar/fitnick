import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'name.dart';

part 'exercise_target_category.g.dart';

@JsonSerializable()
class ExerciseTargetCategory extends Name {
  const ExerciseTargetCategory({@required String name}) : super(name);

  static const upperBody = ExerciseTargetCategory(name: "Upper Body");
  static const lowerBody = ExerciseTargetCategory(name: "Lower Body");
  static const core = ExerciseTargetCategory(name: "Core");

  static const all = [upperBody, lowerBody, core];
  factory ExerciseTargetCategory.fromJson(Map<String, dynamic> json) =>
      _$ExerciseTargetCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$ExerciseTargetCategoryToJson(this);
  @override
  List<Object> get props => [name];
  @override
  String toString() {
    return "Exercise Target Category : $name";
  }
}
