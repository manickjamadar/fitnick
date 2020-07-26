import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';

abstract class IActiveWorkoutFacade {
  Future<Either<WorkoutFailure, List<ActiveWorkout>>> findAll();
  Future<Either<WorkoutFailure, Unit>> create(ActiveWorkout activeWorkout);
  Future<Either<WorkoutFailure, Unit>> update(ActiveWorkout activeWorkout);
  Future<Either<WorkoutFailure, Unit>> delete(UniqueId activeWorkoutId);
}
