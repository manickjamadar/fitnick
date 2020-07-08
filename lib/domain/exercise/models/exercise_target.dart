import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class ExerciseTarget extends Equatable {
  final String name;
  const ExerciseTarget._({@required this.name});

  static const biceps = ExerciseTarget._(name: "Biceps");
  static const triceps = ExerciseTarget._(name: "Triceps");

  @override
  List<Object> get props => [name];
  @override
  String toString() {
    return "Exercise Target : $name";
  }
}
