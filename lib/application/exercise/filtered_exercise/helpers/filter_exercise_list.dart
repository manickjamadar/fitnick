import 'package:fitnick/domain/exercise/models/exercise.dart';
import "../../../core//helpers//list_extension.dart";

List<Exercise> filterExerciseList(
    List<Exercise> list, Exercise filterExercise) {
  final levelFiltered = list
      .where((exercise) => exercise.levels.containsAll(filterExercise.levels))
      .toList();
  final toolFiltered = levelFiltered
      .where((exercise) => exercise.tools.containsAll(filterExercise.tools))
      .toList();
  final typeFiltered = toolFiltered
      .where((exercise) => exercise.types.containsAll(filterExercise.types))
      .toList();
  final primaryTargetFiltered = typeFiltered
      .where((exercise) =>
          exercise.primaryTargets.containsAll(filterExercise.primaryTargets))
      .toList();
  final secondaryTargetFiltered = primaryTargetFiltered
      .where((exercise) => exercise.secondaryTargets
          .containsAll(filterExercise.secondaryTargets))
      .toList();
  return secondaryTargetFiltered;
}
