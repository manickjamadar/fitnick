import 'package:freezed_annotation/freezed_annotation.dart';

part "exercise_perform_type.freezed.dart";
part "exercise_perform_type.g.dart";

@freezed
abstract class ExercisePerformType with _$ExercisePerformType {
  const factory ExercisePerformType.reps() = _Reps;
  const factory ExercisePerformType.secs() = _Secs;
  factory ExercisePerformType.fromJson(Map<String, dynamic> json) =>
      _$ExercisePerformTypeFromJson(json);
}
