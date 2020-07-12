import 'dart:convert';

import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/domain/workout/value_object/workout_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part "workout_entity.freezed.dart";
part "workout_entity.g.dart";

@freezed
abstract class WorkoutEntity implements _$WorkoutEntity {
  static const String collectionName = "workout";
  static const String KEY_ID = "id";
  static const String KEY_NAME = "name";
  static const String KEY_EXERCISE_IDS = "execise_ids";
  const WorkoutEntity._();
  @JsonSerializable(explicitToJson: true)
  const factory WorkoutEntity(
      {@required UniqueId id,
      @required String name,
      @required List<UniqueId> exerciseIds}) = _WorkoutEntity;
  factory WorkoutEntity.fromJson(Map<String, dynamic> json) =>
      _$WorkoutEntityFromJson(json);

  factory WorkoutEntity.fromLocalJson(Map<String, dynamic> json) {
    return WorkoutEntity(
        id: UniqueId.fromString(json[KEY_ID] as String),
        name: json[KEY_NAME] as String,
        exerciseIds: (jsonDecode(json[KEY_EXERCISE_IDS] as String)
                .cast<String>())
            .map<UniqueId>((String stringId) => UniqueId.fromString(stringId))
            .toList());
  }
  Map<String, dynamic> toLocalJson() {
    return {
      KEY_ID: id.value,
      KEY_NAME: name,
      KEY_EXERCISE_IDS: jsonEncode(exerciseIds.map((id) => id.value).toList())
    };
  }

  factory WorkoutEntity.fromModel(Workout workout) {
    return WorkoutEntity(
        id: workout.id,
        name: workout.name.safeValue,
        exerciseIds:
            workout.exercises.map((Exercise exercise) => exercise.id).toList());
  }
  Workout toModel(List<Exercise> exercises) {
    return Workout(
        id: id,
        name: WorkoutName(name),
        exercises: exercises
            .where(
                (Exercise exercise) => exerciseIds.indexOf(exercise.id) != -1)
            .toList());
  }
}
