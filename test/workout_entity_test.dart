import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/domain/workout/value_object/workout_name.dart';
import 'package:fitnick/infrastructure/workout/entities/workout_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Workout Entity test - ', () {
    test("local json test with empty exercise ids", () {
      final WorkoutEntity workoutEntity =
          WorkoutEntity(id: UniqueId(), name: "new workout", exerciseIds: []);
      final newWorkoutEntity =
          WorkoutEntity.fromLocalJson(workoutEntity.toLocalJson());
      expect(workoutEntity, equals(newWorkoutEntity));
    });
    test("empty exercise id local json test", () {
      final WorkoutEntity workoutEntity = WorkoutEntity(
          id: UniqueId(),
          name: "new workout",
          exerciseIds: [UniqueId(), UniqueId()]);
      final newWorkoutEntity =
          WorkoutEntity.fromLocalJson(workoutEntity.toLocalJson());
      expect(workoutEntity, equals(newWorkoutEntity));
    });
    test("from model conversion with empty exercises", () {
      final workoutId = UniqueId();
      final workoutName = "new workout";
      final workout =
          Workout(id: workoutId, name: WorkoutName(workoutName), exercises: []);
      final expectedWorkoutEntity =
          WorkoutEntity(id: workoutId, name: workoutName, exerciseIds: []);
      expect(WorkoutEntity.fromModel(workout), equals(expectedWorkoutEntity));
    });
    test("from model conversion with loaded exercises", () {
      final exerciseIds = [UniqueId(), UniqueId(), UniqueId()];
      final List<Exercise> exercises = [
        Exercise.initial().copyWith(id: exerciseIds[0]),
        Exercise.initial().copyWith(id: exerciseIds[2]),
      ];
      final workoutId = UniqueId();
      final workoutName = "new workout";
      final workout = Workout(
          id: workoutId, name: WorkoutName(workoutName), exercises: exercises);
      final expectedWorkoutEntity = WorkoutEntity(
          id: workoutId,
          name: workoutName,
          exerciseIds: [exerciseIds[0], exerciseIds[2]]);
      expect(WorkoutEntity.fromModel(workout), expectedWorkoutEntity);
    });
    test("to model conversion with empty exercises", () {
      final List<Exercise> exercises = [];
      final workoutId = UniqueId();
      final workoutName = "new workout";
      final workoutEntity = WorkoutEntity(
          id: workoutId, name: workoutName, exerciseIds: [UniqueId()]);
      final expectedWorkout =
          Workout(id: workoutId, name: WorkoutName(workoutName), exercises: []);
      expect(workoutEntity.toModel(exercises), expectedWorkout);
    });
    test("to model conversion with loaded exercises", () {
      final exerciseIds = [UniqueId(), UniqueId(), UniqueId()];
      final List<Exercise> exercises = [
        Exercise.initial().copyWith(id: exerciseIds[0]),
        Exercise.initial().copyWith(id: exerciseIds[1]),
        Exercise.initial().copyWith(id: exerciseIds[2]),
      ];
      final workoutId = UniqueId();
      final workoutName = "new workout";
      final workoutEntity = WorkoutEntity(
          id: workoutId, name: workoutName, exerciseIds: [exerciseIds[1]]);
      final expectedWorkout = Workout(
          id: workoutId,
          name: WorkoutName(workoutName),
          exercises: [exercises[1]]);
      expect(workoutEntity.toModel(exercises), expectedWorkout);
    });
  });
}
