import 'dart:convert';

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
// part "exercise_entity.g.dart";

@freezed
abstract class ExerciseEntity implements _$ExerciseEntity {
  static const String collectionName = "exercise";
  static const String KEY_ID = "id";
  static const String KEY_NAME = "name";
  static const String KEY_LEVEL = "level";
  static const String KEY_TOOL = "tool";
  static const String KEY_TYPE = "type";
  static const String KEY_TARGET = "target";
  const ExerciseEntity._();
  @JsonSerializable(explicitToJson: true)
  const factory ExerciseEntity({
    @JsonKey(name: KEY_ID) @required UniqueId id,
    @JsonKey(name: KEY_NAME) @required String name,
    @JsonKey(name: KEY_LEVEL) @required ExerciseLevel level,
    @JsonKey(name: KEY_TOOL) @required ExerciseTool tool,
    @JsonKey(name: KEY_TYPE) @required ExerciseType type,
    @JsonKey(name: KEY_TARGET) @required ExerciseTarget target,
  }) = _ExerciseEntity;
  // factory ExerciseEntity.fromJson(Map<String, dynamic> json) =>
  //     _$ExerciseEntityFromJson(json);

  factory ExerciseEntity.fromJson(Map<String, dynamic> json) {
    return ExerciseEntity(
      id: UniqueId.fromString(json[KEY_ID] as String),
      name: json[KEY_NAME] as String,
      level: ExerciseLevel.fromJson(
          jsonDecode(json[KEY_LEVEL] as String) as Map<String, dynamic>),
      tool: ExerciseTool.fromJson(
          jsonDecode(json[KEY_TOOL] as String) as Map<String, dynamic>),
      type: ExerciseType.fromJson(
          jsonDecode(json[KEY_TYPE] as String) as Map<String, dynamic>),
      target: ExerciseTarget.fromJson(
          jsonDecode(json[KEY_TARGET] as String) as Map<String, dynamic>),
    );
  }
  Map<String, String> toJson() {
    return {
      KEY_ID: id.value,
      KEY_NAME: name,
      KEY_LEVEL: jsonEncode(level.toJson()),
      KEY_TOOL: jsonEncode(tool.toJson()),
      KEY_TYPE: jsonEncode(type.toJson()),
      KEY_TARGET: jsonEncode(type.toJson())
    };
  }

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
