import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/unique_id.dart';
import '../../../domain/exercise/models/exercise.dart';
import '../../../domain/exercise/models/sub_models/exercise_level.dart';
import '../../../domain/exercise/models/sub_models/exercise_target.dart';
import '../../../domain/exercise/models/sub_models/exercise_tool.dart';
import '../../../domain/exercise/models/sub_models/exercise_type.dart';
import '../../../domain/exercise/value_object/exercise_name.dart';

part "exercise_entity.freezed.dart";
part "exercise_entity.g.dart";

@freezed
abstract class ExerciseEntity implements _$ExerciseEntity {
  const ExerciseEntity._();
  @JsonSerializable(explicitToJson: true)
  const factory ExerciseEntity({
    @JsonKey(name: "id") @required UniqueId id,
    @required String name,
    @JsonKey(name: "level") @required ExerciseLevel level,
    @JsonKey(name: "tool") @required ExerciseTool tool,
    @JsonKey(name: "type") @required ExerciseType type,
    @JsonKey(name: "target") @required ExerciseTarget target,
  }) = _ExerciseEntity;
  factory ExerciseEntity.fromJson(Map<String, dynamic> json) =>
      _$ExerciseEntityFromJson(json);

  factory ExerciseEntity.fromModel(Exercise exercise) {
    return ExerciseEntity(
        id: exercise.id,
        name: exercise.name.safeValue,
        level: exercise.level,
        tool: exercise.tool,
        type: exercise.type,
        target: exercise.target);
  }
  Exercise toModel() {
    return Exercise(
        id: this.id,
        name: ExerciseName(this.name),
        level: this.level,
        tool: this.tool,
        type: this.type,
        target: this.target);
  }

  static Map<String, dynamic> fromModelToJson(Exercise exercise) {
    return ExerciseEntity.fromModel(exercise).toJson();
  }

  static Exercise fromJsonToModel(Map<String, dynamic> json) {
    return ExerciseEntity.fromJson(json).toModel();
  }
}
