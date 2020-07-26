import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/active_exercise/failure/active_exercise_failure.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/domain/core/unique_id.dart';

abstract class IActiveExerciseFacade {
  Future<Either<ActiveExerciseFailure, List<ActiveExercise>>> findAll();
  Future<Either<ActiveExerciseFailure, Unit>> create(
      ActiveExercise activeExercise);
  Future<Either<ActiveExerciseFailure, Unit>> update(
      ActiveExercise activeExercise);
  Future<Either<ActiveExerciseFailure, Unit>> delete(UniqueId activeExerciseId);
}
