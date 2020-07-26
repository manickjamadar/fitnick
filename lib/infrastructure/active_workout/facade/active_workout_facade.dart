import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/active_exercise/facade/i_active_exercise_facade.dart';
import 'package:fitnick/domain/active_exercise/failure/active_exercise_failure.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/domain/active_workout/facade/i_active_workout_facade.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/infrastructure/active_workout/data_source/i_active_workout_data_source.dart';
import 'package:fitnick/infrastructure/active_workout/entities/active_workout_entity.dart';
import 'package:flutter/foundation.dart';

class ActiveWorkoutFacade extends IActiveWorkoutFacade {
  final IActiveWorkoutDataSource dataSource;
  final IActiveExerciseFacade activeExerciseFacade;
  ActiveWorkoutFacade(
      {@required this.dataSource, @required this.activeExerciseFacade});
  @override
  Future<Either<WorkoutFailure, Unit>> create(
      ActiveWorkout activeWorkout) async {
    try {
      await dataSource.add(ActiveWorkoutEntity.fromModel(activeWorkout));
      return Right(unit);
    } catch (_) {
      return Left(WorkoutFailure.create());
    }
  }

  @override
  Future<Either<WorkoutFailure, Unit>> delete(UniqueId activeWorkoutId) async {
    try {
      await dataSource.delete(activeWorkoutId);
      return Right(unit);
    } catch (_) {
      return Left(WorkoutFailure.delete());
    }
  }

  @override
  Future<Either<WorkoutFailure, List<ActiveWorkout>>> findAll() async {
    try {
      final List<ActiveWorkoutEntity> activeWorkoutEntities =
          await dataSource.findAll();
      final Either<ActiveExerciseFailure, List<ActiveExercise>>
          activeExercisesFailureOrSuccess =
          await activeExerciseFacade.findAll();
      return activeExercisesFailureOrSuccess
          .fold((_) => Left(WorkoutFailure.findExercises()),
              (List<ActiveExercise> activeExercises) {
        return Right(activeWorkoutEntities
            .map((entity) => entity.toModel(activeExercises))
            .toList());
      });
    } catch (_) {
      return Left(WorkoutFailure.find());
    }
  }

  @override
  Future<Either<WorkoutFailure, Unit>> update(
      ActiveWorkout activeWorkout) async {
    try {
      await dataSource.update(ActiveWorkoutEntity.fromModel(activeWorkout));
      return Right(unit);
    } catch (_) {
      return Left(WorkoutFailure.update());
    }
  }
}
