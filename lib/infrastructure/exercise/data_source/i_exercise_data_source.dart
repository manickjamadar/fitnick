import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/infrastructure/exercise/entities/exercise_entity.dart';

abstract class IExerciseDataSource {
  Future<void> addExercise(ExerciseEntity exerciseEntity);
  Future<List<ExerciseEntity>> finalAll();
  Future<void> deleteExercise(UniqueId exerciseId);
}
