import 'package:freezed_annotation/freezed_annotation.dart';

part "active_exercise_failure.freezed.dart";

@freezed
abstract class ActiveExerciseFailure with _$ActiveExerciseFailure {
  const factory ActiveExerciseFailure.unexpected() = _Unexpected;
  const factory ActiveExerciseFailure.create() = _Create;
  const factory ActiveExerciseFailure.find() = _Find;
  const factory ActiveExerciseFailure.update() = _Update;
  const factory ActiveExerciseFailure.delete() = _Delete;
}

String getActiveExerciseFailureMessage(ActiveExerciseFailure failure) {
  return failure.when<String>(
      unexpected: () => "Something unexpected happaned,try again",
      create: () => "Active Exercise creation failed",
      find: () => "Active Exercise loading failed",
      update: () => "Active Exercise updating failed",
      delete: () => "Active Exercise deleting failed");
}
