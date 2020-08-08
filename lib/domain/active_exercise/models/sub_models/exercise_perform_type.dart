import 'package:freezed_annotation/freezed_annotation.dart';

part "exercise_perform_type.freezed.dart";
part "exercise_perform_type.g.dart";

@freezed
abstract class ExercisePerformType with _$ExercisePerformType {
  const factory ExercisePerformType({@required String name}) = _PerformType;
  factory ExercisePerformType.fromJson(Map<String, dynamic> json) =>
      _$ExercisePerformTypeFromJson(json);
  static const reps = const ExercisePerformType(name: "Reps");
  static const secs = const ExercisePerformType(name: "Secs");
  static const all = [reps, secs];
}
