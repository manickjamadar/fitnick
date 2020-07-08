import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/exercise_name.dart';
import 'exercise_level.dart';
import 'exercise_target.dart';
import 'exercise_tool.dart';
import 'exercise_type.dart';

part "exercise.freezed.dart";

@freezed
abstract class Exercise with _$Exercise {
  const factory Exercise({
    @required ExerciseName name,
    @required ExerciseLevel level,
    @required ExerciseTool tool,
    @required ExerciseType type,
    @required ExerciseTarget target,
  }) = _Exercise;
}
