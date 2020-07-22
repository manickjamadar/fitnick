import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';

Option<List<Exercise>> searchExerciseList(
    List<Exercise> list, String searchTerm) {
  if (list.isEmpty) {
    return none();
  }
  if (searchTerm.isEmpty) {
    return Some([...list]);
  }
  final filteredExercises = list
      .where((exercise) => exercise.name.safeValue
          .contains(RegExp(searchTerm, caseSensitive: false)))
      .toList();
  return Some(filteredExercises);
}
