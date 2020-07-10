import 'package:fitnick/infrastructure/exercise/entities/exercise_entity.dart';

abstract class IExerciseDataSource {
  Future<void> addExercise(ExerciseEntity exerciseEntity);
  Future<List<ExerciseEntity>> finalAll();
}
