import 'package:fitnick/domain/core/unique_id.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/exercise/facade/i_exercise_facade.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/workout/facade/i_workout_facade.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/infrastructure/workout/data_source/i_workout_data_source.dart';
import 'package:fitnick/infrastructure/workout/entities/workout_entity.dart';
import 'package:flutter/foundation.dart';

class LocalWorkoutFacade extends IWorkoutFacade {
  final IWorkoutDataSource workoutDataSource;
  final IExerciseFacade exerciseFacade;

  LocalWorkoutFacade(
      {@required this.workoutDataSource, @required this.exerciseFacade});
  @override
  Future<Either<WorkoutFailure, Unit>> createWorkout(Workout workout) async {
    try {
      await workoutDataSource.addWorkout(WorkoutEntity.fromModel(workout));
      return Right(unit);
    } catch (error) {
      return Left(WorkoutFailure.create());
    }
  }

  @override
  Future<Either<WorkoutFailure, Unit>> deleteWorkout(UniqueId workoutId) async {
    try {
      await workoutDataSource.deleteWorkout(workoutId);
      return Right(unit);
    } catch (error) {
      return Left(WorkoutFailure.delete());
    }
  }

  @override
  Future<Either<WorkoutFailure, List<Workout>>> findAll() async {
    try {
      final List<WorkoutEntity> workoutEntities =
          await workoutDataSource.finalAll();
      final exerciseFailureOrSuccess = await exerciseFacade.findAll();
      return exerciseFailureOrSuccess
          .fold((execiseFailure) => Left(WorkoutFailure.findExercises()),
              (List<Exercise> exercises) {
        return Right(workoutEntities
            .map((entity) => entity.toModel(exercises))
            .toList());
      });
    } catch (error) {
      return Left(WorkoutFailure.find());
    }
  }

  @override
  Future<Either<WorkoutFailure, Unit>> updateWorkout(Workout workout) async {
    try {
      await workoutDataSource.updateWorkout(WorkoutEntity.fromModel(workout));
      return Right(unit);
    } catch (error) {
      return Left(WorkoutFailure.update());
    }
  }
}
