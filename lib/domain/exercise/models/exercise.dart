import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/core/value/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/exercise_name.dart';
import 'exercise_level.dart';
import 'exercise_target.dart';
import 'exercise_tool.dart';
import 'exercise_type.dart';

part "exercise.freezed.dart";

@freezed
abstract class Exercise implements _$Exercise {
  const Exercise._();
  const factory Exercise({
    @required UniqueId id,
    @required ExerciseName name,
    @required ExerciseLevel level,
    @required ExerciseTool tool,
    @required ExerciseType type,
    @required ExerciseTarget target,
  }) = _Exercise;
  factory Exercise.initial() {
    return Exercise(
        id: UniqueId(),
        name: ExerciseName(""),
        level: ExerciseLevel.beginner,
        tool: ExerciseTool.bodyWeight,
        type: ExerciseType.warmUp,
        target: ExerciseTarget.biceps);
  }
  Option<ValueFailure> failureOption() {
    return name.value.fold((l) => Some(l), (r) => none());
  }

  bool get isValid => failureOption().isNone();
}
