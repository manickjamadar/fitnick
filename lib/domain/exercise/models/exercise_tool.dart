import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class ExerciseTool extends Equatable {
  final String name;
  const ExerciseTool._({@required this.name});

  static const bodyWeight = ExerciseTool._(name: "Body Weight");
  static const pushUpBar = ExerciseTool._(name: "Push Up Bar");
  static const miniBand = ExerciseTool._(name: "Mini Band");

  @override
  List<Object> get props => [name];
  @override
  String toString() {
    return "Exercise Tool : $name";
  }
}
