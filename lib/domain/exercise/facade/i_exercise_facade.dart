import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/exercise/failure/exercise_failure.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';

abstract class IExerciseFacade {
  Future<Either<ExerciseFailure, List<Exercise>>> findAll();
  Future<Either<ExerciseFailure, Unit>> createExercise(Exercise exercise);
  Future<Either<ExerciseFailure, Unit>> updateExercise(Exercise exercise);
}
