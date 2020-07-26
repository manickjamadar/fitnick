import 'package:fitnick/domain/core/unique_id.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'active_workout_entity.freezed.dart';

@freezed
abstract class ActiveWorkoutEntity with _$ActiveWorkoutEntity {
  static const String collectionName = "active_workout";
  static const String KEY_ID = "id";
  static const String KEY_NAME = "name";
  static const String KEY_COLOR = "color";
  static const String KEY_IMAGE_PATH = "image_path";
  static const String KEY_ACTIVE_EXERCISE_IDS = "active_exercise_ids";
  const factory ActiveWorkoutEntity(
      {@required UniqueId id,
      @required String name,
      @required int color,
      @required String imagePath,
      @required List<UniqueId> activeExerciseIds}) = _ActiveWorkoutEntity;
}
