import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:fitnick/domain/exercise/models/exercise_target.dart';
import 'package:flutter/foundation.dart';

class ExerciseType extends Equatable {
  final String name;
  final Option<List<ExerciseTarget>> targets;

  const ExerciseType._({@required this.name, @required this.targets});

  static const warmUp = ExerciseType._(name: "Warm Up", targets: None());
  static const stretch =
      ExerciseType._(name: "Warm Up", targets: Some([ExerciseTarget.triceps]));
  @override
  List<Object> get props => [name, targets];
  @override
  String toString() {
    return "Exercise Type : $name";
  }
}
