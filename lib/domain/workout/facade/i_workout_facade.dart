import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/domain/workout/models/workout.dart';

abstract class IWorkoutFacade {
  Future<Either<WorkoutFailure, List<Workout>>> findAll();
  Future<Either<WorkoutFailure, Unit>> createWorkout(Workout workout);
  Future<Either<WorkoutFailure, Unit>> updateWorkout(Workout workout);
  Future<Either<WorkoutFailure, Unit>> deleteWorkout(UniqueId workoutId);
}
