import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/active_exercise/facade/i_active_exercise_facade.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/domain/active_exercise/failure/active_exercise_failure.dart';
import 'package:fitnick/domain/exercise/facade/i_exercise_facade.dart';
import 'package:fitnick/domain/exercise/failure/exercise_failure.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/infrastructure/active_exercise/data_source/i_active_exercise_data_source.dart';
import 'package:fitnick/infrastructure/active_exercise/entities/active_exercise_entity.dart';
import 'package:flutter/foundation.dart';

class ActiveExerciseFacade extends IActiveExerciseFacade {
  final IActiveExerciseDataSource dataSource;
  final IExerciseFacade exerciseFacade;
  ActiveExerciseFacade(
      {@required this.dataSource, @required this.exerciseFacade});
  @override
  Future<Either<ActiveExerciseFailure, Unit>> create(
      ActiveExercise activeExercise) async {
    try {
      await dataSource.add(ActiveExerciseEntity.fromModel(activeExercise));
      return Right(unit);
    } catch (_) {
      return Left(ActiveExerciseFailure.create());
    }
  }

  @override
  Future<Either<ActiveExerciseFailure, Unit>> delete(
      UniqueId activeExerciseId) async {
    try {
      await dataSource.delete(activeExerciseId);
      return Right(unit);
    } catch (_) {
      return Left(ActiveExerciseFailure.delete());
    }
  }

  @override
  Future<Either<ActiveExerciseFailure, List<ActiveExercise>>> findAll() async {
    try {
      final List<ActiveExerciseEntity> activeExerciseEntities =
          await dataSource.findAll();
      final Either<ExerciseFailure, List<Exercise>> exercisesFailureOrSuccess =
          await exerciseFacade.findAll();

      return exercisesFailureOrSuccess
          .fold((_) => Left(ActiveExerciseFailure.findExercise()),
              (List<Exercise> exercises) {
        final List<ActiveExercise> activeExercises =
            activeExerciseEntities.map((entity) {
          return entity.toModelFromExercises(exercises);
        }).toList();
        return Right(activeExercises);
      });
    } catch (_) {
      return Left(ActiveExerciseFailure.find());
    }
  }

  @override
  Future<Either<ActiveExerciseFailure, Unit>> update(
      ActiveExercise activeExercise) async {
    try {
      await dataSource.update(ActiveExerciseEntity.fromModel(activeExercise));
      return Right(unit);
    } catch (_) {
      return Left(ActiveExerciseFailure.update());
    }
  }

  @override
  Future<Either<ActiveExerciseFailure, List<ActiveExercise>>> findByExerciseId(
      UniqueId exerciseId) async {
    try {
      final List<ActiveExerciseEntity> activeExerciseEntities =
          await dataSource.findByExerciseId(exerciseId);
      if (activeExerciseEntities.isEmpty) {
        return Right([]);
      }
      final Either<ExerciseFailure, List<Exercise>> exercisesFailureOrSuccess =
          await exerciseFacade.findAll();

      return exercisesFailureOrSuccess
          .fold((_) => Left(ActiveExerciseFailure.findExercise()),
              (List<Exercise> exercises) {
        final List<ActiveExercise> activeExercises =
            activeExerciseEntities.map((entity) {
          return entity.toModelFromExercises(exercises);
        }).toList();
        return Right(activeExercises);
      });
    } catch (_) {
      return Left(ActiveExerciseFailure.find());
    }
  }
}
