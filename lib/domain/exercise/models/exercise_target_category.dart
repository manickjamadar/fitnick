import 'package:fitnick/domain/exercise/models/name.dart';
import 'package:flutter/foundation.dart';

class ExerciseTargetCategory extends Name {
  const ExerciseTargetCategory({@required String name}) : super(name);

  static const upperBody = ExerciseTargetCategory(name: "Upper Body");
  static const lowerBody = ExerciseTargetCategory(name: "Lower Body");
  static const core = ExerciseTargetCategory(name: "Core");

  static const all = [upperBody, lowerBody, core];
  @override
  List<Object> get props => [name];
  @override
  String toString() {
    return "Exercise Target Category : $name";
  }
}
