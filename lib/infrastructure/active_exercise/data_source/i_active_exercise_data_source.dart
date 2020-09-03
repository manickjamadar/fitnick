import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/infrastructure/active_exercise/entities/active_exercise_entity.dart';

abstract class IActiveExerciseDataSource {
  Future<void> add(ActiveExerciseEntity activeExerciseEntity);
  Future<void> delete(UniqueId activeExeciseId);
  Future<void> update(ActiveExerciseEntity activeExerciseEntity);
  Future<List<ActiveExerciseEntity>> findAll();
  Future<List<ActiveExerciseEntity>> findByExerciseId(UniqueId exerciseId);
}
