import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/infrastructure/active_workout/entities/active_workout_entity.dart';

abstract class IActiveWorkoutDataSource {
  Future<void> add(ActiveWorkoutEntity activeWorkoutEntity);
  Future<void> delete(UniqueId activeWorkoutId);
  Future<void> update(ActiveWorkoutEntity activeWorkoutEntity);
  Future<List<ActiveWorkoutEntity>> findAll();
}
