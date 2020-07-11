import '../../../domain/core/unique_id.dart';
import '../entities/exercise_entity.dart';

abstract class IExerciseDataSource {
  Future<void> addExercise(ExerciseEntity exerciseEntity);
  Future<List<ExerciseEntity>> finalAll();
  Future<void> deleteExercise(UniqueId exerciseId);
  Future<void> updateExercise(ExerciseEntity exerciseEntity);
}
