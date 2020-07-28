import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/workout/value_object/workout_name.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "../../../application/core//helpers/list_extension.dart";
part 'active_workout_entity.freezed.dart';
part 'active_workout_entity.g.dart';

@freezed
abstract class ActiveWorkoutEntity implements _$ActiveWorkoutEntity {
  static const String collectionName = "active_workout";
  static const String KEY_ID = "id";
  static const String KEY_NAME = "name";
  static const String KEY_COLOR = "color";
  static const String KEY_IMAGE_PATH = "image_path";
  static const String KEY_ACTIVE_EXERCISE_IDS = "active_exercise_ids";
  const ActiveWorkoutEntity._();
  @JsonSerializable(explicitToJson: true)
  const factory ActiveWorkoutEntity(
      {@JsonKey(name: ActiveWorkoutEntity.KEY_ID)
      @required
          UniqueId id,
      @JsonKey(name: ActiveWorkoutEntity.KEY_NAME)
      @required
          String name,
      @JsonKey(name: ActiveWorkoutEntity.KEY_COLOR)
      @required
          int color,
      @JsonKey(name: ActiveWorkoutEntity.KEY_IMAGE_PATH)
          String imagePath,
      @JsonKey(name: ActiveWorkoutEntity.KEY_ACTIVE_EXERCISE_IDS)
      @required
          List<UniqueId> activeExerciseIds}) = _ActiveWorkoutEntity;
  factory ActiveWorkoutEntity.fromJson(Map<String, dynamic> json) =>
      _$ActiveWorkoutEntityFromJson(json);
  factory ActiveWorkoutEntity.fromModel(ActiveWorkout activeWorkout) {
    return ActiveWorkoutEntity(
        id: activeWorkout.id,
        name: activeWorkout.name.safeValue,
        color: activeWorkout.color.value,
        imagePath: activeWorkout.imagePath.fold(() => null, (a) => a),
        activeExerciseIds:
            activeWorkout.activeExercises.map((e) => e.id).toList());
  }
  ActiveWorkout toModel(List<ActiveExercise> activeExercises) {
    return ActiveWorkout(
        id: this.id,
        name: WorkoutName(name),
        color: Color(color),
        imagePath: optionOf(imagePath),
        activeExercises: activeExerciseIds.filter(
            activeExercises,
            (UniqueId i, ActiveExercise activeExercise) =>
                activeExercise.id == i));
  }

  factory ActiveWorkoutEntity.fromLocalJson(Map<String, dynamic> json) {
    return ActiveWorkoutEntity(
        id: UniqueId.fromString(json[KEY_ID] as String),
        name: json[KEY_NAME] as String,
        color: json[KEY_COLOR] as int,
        imagePath: json[KEY_IMAGE_PATH] as String,
        activeExerciseIds: (jsonDecode(json['active_exercise_ids'] as String)
                as List)
            ?.map((e) =>
                e == null ? null : UniqueId.fromJson(e as Map<String, dynamic>))
            ?.toList());
  }

  Map<String, dynamic> toLocalJson() {
    return {
      KEY_ID: this.id.value,
      KEY_NAME: name,
      KEY_COLOR: color,
      KEY_IMAGE_PATH: imagePath,
      KEY_ACTIVE_EXERCISE_IDS:
          jsonEncode(activeExerciseIds?.map((e) => e?.toJson())?.toList())
    };
  }
}
