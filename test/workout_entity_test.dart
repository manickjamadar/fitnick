import 'package:fitnick/domain/core/unique_id.dart';
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
  });
}
