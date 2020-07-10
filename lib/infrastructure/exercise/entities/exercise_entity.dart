import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/exercise/models/exercise_level.dart';
import 'package:fitnick/domain/exercise/models/exercise_target.dart';
import 'package:fitnick/domain/exercise/models/exercise_tool.dart';
import 'package:fitnick/domain/exercise/models/exercise_type.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part "exercise_entity.freezed.dart";

@freezed
abstract class ExerciseEntity with _$ExerciseEntity {
  const factory ExerciseEntity({
    @required UniqueId id,
    @required String name,
    @required ExerciseLevel level,
    @required ExerciseTool tool,
    @required ExerciseType type,
    @required ExerciseTarget target,
  }) = _ExerciseEntity;
}
