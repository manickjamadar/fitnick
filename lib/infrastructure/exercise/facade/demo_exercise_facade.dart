import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/exercise/facade/i_exercise_facade.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/exercise/failure/exercise_failure.dart';

class DemoExerciseFacade extends IExerciseFacade {
  Future<void> _wait() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Future<Either<ExerciseFailure, Unit>> createExercise(
      Exercise exercise) async {
    await _wait();
    return Right(unit);
  }

  @override
  Future<Either<ExerciseFailure, List<Exercise>>> findAll() async {
    await _wait();
    return Right([]);
  }
}
