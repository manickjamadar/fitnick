import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/infrastructure/workout/entities/workout_entity.dart';

abstract class IWorkoutDataSource {
  Future<void> addWorkout(WorkoutEntity workoutEntity);
  Future<List<WorkoutEntity>> finalAll();
  Future<void> deleteWorkout(UniqueId workoutId);
  Future<void> updateWorkout(WorkoutEntity workoutEntity);
}
