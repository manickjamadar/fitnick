import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class ExerciseTargetCategory extends Equatable {
  final String name;
  const ExerciseTargetCategory._({@required this.name});

  static const upperBody = ExerciseTargetCategory._(name: "Upper Body");
  static const lowerBody = ExerciseTargetCategory._(name: "Lower Body");
  static const core = ExerciseTargetCategory._(name: "Core");

  static const all = [upperBody, lowerBody, core];
  @override
  List<Object> get props => [name];
  @override
  String toString() {
    return "Exercise Target Category : $name";
  }
}
