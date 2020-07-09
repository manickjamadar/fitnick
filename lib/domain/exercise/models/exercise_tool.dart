import 'package:fitnick/domain/exercise/models/name.dart';
import 'package:flutter/foundation.dart';

class ExerciseTool extends Name {
  const ExerciseTool._({@required String name}) : super(name);

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
