import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/exercise/facade/i_exercise_facade.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/exercise/failure/exercise_failure.dart';
import 'package:fitnick/infrastructure/exercise/data_source/i_exercise_data_source.dart';
import 'package:fitnick/infrastructure/exercise/entities/exercise_entity.dart';
import 'package:flutter/foundation.dart';

class LocalExerciseFacade extends IExerciseFacade {
  final IExerciseDataSource dataSource;

  LocalExerciseFacade({@required this.dataSource});
  @override
  Future<Either<ExerciseFailure, Unit>> createExercise(
      Exercise exercise) async {
    try {
      await dataSource.addExercise(ExerciseEntity.fromModel(exercise));
      return Right(unit);
    } catch (error) {
      assert(() {
        print(error);
        return true;
      }());
      return Left(ExerciseFailure.create());
    }
  }

  @override
  Future<Either<ExerciseFailure, List<Exercise>>> findAll() async {
    try {
      final exerciseEntities = await dataSource.finalAll();
      return Right(exerciseEntities.map((entity) => entity.toModel()).toList());
    } catch (error) {
      assert(() {
        print(error);
        return true;
      }());
      return Left(ExerciseFailure.find());
    }
  }

  @override
  Future<Either<ExerciseFailure, Unit>> updateExercise(
      Exercise exercise) async {
    try {
      await dataSource.updateExercise(ExerciseEntity.fromModel(exercise));
      return Right(unit);
    } catch (error) {
      return Left(ExerciseFailure.update());
    }
  }

  @override
  Future<Either<ExerciseFailure, Unit>> deleteExercise(
      UniqueId exerciseId) async {
    try {
      await dataSource.deleteExercise(exerciseId);
      return Right(unit);
    } catch (error) {
      return Left(ExerciseFailure.delete());
    }
  }
}
