import 'dart:convert';

import 'package:dartz/dartz.dart';
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
  static const String collectionName = "exercise";
  static const String KEY_ID = "id";
  static const String KEY_NAME = "name";
  static const String KEY_VIDEO_PATH = "video_path";
  static const String KEY_THUMBNAIL_PATH = "thumbnail_path";
  static const String KEY_LEVELS = "levels";
  static const String KEY_TOOLS = "tools";
  static const String KEY_TYPES = "types";
  static const String KEY_PRIMARY_TARGETS = "primary_targets";
  static const String KEY_SECONDARY_TARGETS = "secondary_targets";
  const ExerciseEntity._();
  @JsonSerializable(explicitToJson: true)
  const factory ExerciseEntity({
    @JsonKey(name: "id") @required UniqueId id,
    @JsonKey(name: "name") @required String name,
    @JsonKey(name: "video_path") String videoPath,
    @JsonKey(name: "thumbnail_path") String thumbnailPath,
    @JsonKey(name: "levels") @required List<ExerciseLevel> levels,
    @JsonKey(name: "tools") @required List<ExerciseTool> tools,
    @JsonKey(name: "types") @required List<ExerciseType> types,
    @JsonKey(name: "primary_targets")
    @required
        List<ExerciseTarget> primaryTargets,
    @JsonKey(name: "secondary_targets")
    @required
        List<ExerciseTarget> secondaryTargets,
  }) = _ExerciseEntity;
  factory ExerciseEntity.fromJson(Map<String, dynamic> json) =>
      _$ExerciseEntityFromJson(json);

  factory ExerciseEntity.fromModel(Exercise exercise) {
    return ExerciseEntity(
        id: exercise.id,
        name: exercise.name.safeValue,
        videoPath: exercise.videoPath.fold(() => null, (a) => a),
        thumbnailPath: exercise.thumbnailPath.fold(() => null, (a) => a),
        levels: exercise.levels,
        tools: exercise.tools,
        types: exercise.types,
        primaryTargets: exercise.primaryTargets,
        secondaryTargets: exercise.secondaryTargets);
  }
  Exercise toModel() {
    return Exercise(
        id: this.id,
        name: ExerciseName(name),
        videoPath: optionOf(videoPath),
        thumbnailPath: optionOf(thumbnailPath),
        levels: levels,
        types: types,
        tools: tools,
        primaryTargets: primaryTargets,
        secondaryTargets: secondaryTargets);
  }

  factory ExerciseEntity.fromLocalJson(Map<String, dynamic> json) {
    return ExerciseEntity(
      id: UniqueId.fromString(json['id'] as String),
      name: json['name'] as String,
      videoPath: json['video_path'] as String,
      thumbnailPath: json['thumbnail_path'] as String,
      levels: (jsonDecode(json['levels'] as String) as List)
          ?.map((e) => e == null
              ? null
              : ExerciseLevel.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      tools: (jsonDecode(json['tools'] as String) as List)
          ?.map((e) => e == null
              ? null
              : ExerciseTool.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      types: (jsonDecode(json['types'] as String) as List)
          ?.map((e) => e == null
              ? null
              : ExerciseType.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      primaryTargets: (jsonDecode(json['primary_targets'] as String) as List)
          ?.map((e) => e == null
              ? null
              : ExerciseTarget.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      secondaryTargets:
          (jsonDecode(json['secondary_targets'] as String) as List)
              ?.map((e) => e == null
                  ? null
                  : ExerciseTarget.fromJson(e as Map<String, dynamic>))
              ?.toList(),
    );
  }
  Map<String, dynamic> toLocalJson() {
    return {
      KEY_ID: this.id.value,
      KEY_NAME: this.name,
      KEY_VIDEO_PATH: this.videoPath,
      KEY_THUMBNAIL_PATH: this.thumbnailPath,
      KEY_LEVELS: jsonEncode(this.levels?.map((e) => e?.toJson())?.toList()),
      KEY_TOOLS: jsonEncode(this.tools?.map((e) => e?.toJson())?.toList()),
      KEY_TYPES: jsonEncode(this.types?.map((e) => e?.toJson())?.toList()),
      KEY_PRIMARY_TARGETS:
          jsonEncode(this.primaryTargets?.map((e) => e?.toJson())?.toList()),
      KEY_SECONDARY_TARGETS:
          jsonEncode(this.secondaryTargets?.map((e) => e?.toJson())?.toList()),
    };
  }
}
