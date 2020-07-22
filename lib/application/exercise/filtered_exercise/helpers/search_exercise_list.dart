import 'package:fitnick/domain/exercise/models/exercise.dart';

List<Exercise> searchExerciseList(List<Exercise> list, String searchTerm) {
  if (list.isEmpty) {
    return [];
  }
  if (searchTerm.isEmpty) {
    return [...list];
  }
  final filteredExercises = list
      .where((exercise) => exercise.name.safeValue
          .contains(RegExp(searchTerm, caseSensitive: false)))
      .toList();
  return filteredExercises;
}
