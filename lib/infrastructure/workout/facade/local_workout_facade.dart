import 'package:fitnick/domain/core/unique_id.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/workout/facade/i_workout_facade.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';

class LocalWorkoutFacade extends IWorkoutFacade {
  @override
  Future<Either<WorkoutFailure, Unit>> createWorkout(Workout workout) {
    // TODO: implement createWorkout
    throw UnimplementedError();
  }

  @override
  Future<Either<WorkoutFailure, Unit>> deleteWorkout(UniqueId workoutId) {
    // TODO: implement deleteWorkout
    throw UnimplementedError();
  }

  @override
  Future<Either<WorkoutFailure, List<Workout>>> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<Either<WorkoutFailure, Unit>> updateWorkout(Workout workout) {
    // TODO: implement updateWorkout
    throw UnimplementedError();
  }
}
