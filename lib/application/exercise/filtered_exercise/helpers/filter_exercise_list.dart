import 'package:fitnick/domain/exercise/models/exercise.dart';
import "../../../core//helpers//list_extension.dart";

List<Exercise> filterExerciseList(
    List<Exercise> list, Exercise filterExercise) {
  final levelFiltered = list
      .where((exercise) => exercise.levels.containsAll(filterExercise.levels))
      .toList();
  return levelFiltered;
}
