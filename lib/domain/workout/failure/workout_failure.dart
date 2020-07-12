import 'package:freezed_annotation/freezed_annotation.dart';
part 'workout_failure.freezed.dart';

@freezed
abstract class WorkoutFailure with _$WorkoutFailure {
  const factory WorkoutFailure.unexpected() = _Unexpected;
  const factory WorkoutFailure.create() = _Create;
  const factory WorkoutFailure.find() = _Find;
  const factory WorkoutFailure.update() = _Update;
  const factory WorkoutFailure.delete() = _Delete;
}

String getWorkoutFailureMessage(WorkoutFailure failure) {
  return failure.when<String>(
      unexpected: () => "Something unexpected happaned,try again",
      create: () => "Workout creation failed",
      find: () => "Workout loading failed",
      update: () => "Workout updating failed",
      delete: () => "Workout deleting failed");
}
