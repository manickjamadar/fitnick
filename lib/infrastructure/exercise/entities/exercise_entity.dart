import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/unique_id.dart';
import '../../../domain/exercise/models/sub_models/exercise_level.dart';
import '../../../domain/exercise/models/sub_models/exercise_target.dart';
import '../../../domain/exercise/models/sub_models/exercise_tool.dart';
import '../../../domain/exercise/models/sub_models/exercise_type.dart';

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
