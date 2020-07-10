import 'package:freezed_annotation/freezed_annotation.dart';

part "exercise_failure.freezed.dart";

@freezed
abstract class ExerciseFailure with _$ExerciseFailure {
  const factory ExerciseFailure.unexpected() = _Unexpected;
  const factory ExerciseFailure.create() = _Create;
  const factory ExerciseFailure.find() = _Find;
}

String getExerciseFailureMessage(ExerciseFailure failure) {
  return failure.when<String>(
      unexpected: () => "Something unexpected happaned,try again",
      create: () => "Exercise creation failed",
      find: () => "Exercise loading failed");
}
