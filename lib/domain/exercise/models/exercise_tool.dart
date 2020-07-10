import 'package:fitnick/domain/exercise/models/name.dart';
import 'package:flutter/foundation.dart';

class ExerciseTool extends Name {
  const ExerciseTool({@required String name}) : super(name);

  static const bodyWeight = ExerciseTool(name: "Body Weight");
  static const pushUpBar = ExerciseTool(name: "Push Up Bar");
  static const miniBand = ExerciseTool(name: "Mini Band");

  static const all = [bodyWeight, pushUpBar, miniBand];

  @override
  List<Object> get props => [name];
  @override
  String toString() {
    return "Exercise Tool : $name";
  }
}
