import 'dart:convert';

import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/domain/active_exercise/sub_models/exercise_set.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_exercise_entity.freezed.dart';
part 'active_exercise_entity.g.dart';

@freezed
abstract class ActiveExerciseEntity implements _$ActiveExerciseEntity {
  static const String collectionName = "active_exercise";
  static const String KEY_ID = "id";
  static const String KEY_SETS = "sets";
  static const String KEY_REPS_TEMPO = "reps_tempo";
  static const String KEY_EXERCISE_ID = "exercise_id";
  const ActiveExerciseEntity._();
  @JsonSerializable(explicitToJson: true)
  const factory ActiveExerciseEntity(
      {@JsonKey(name: ActiveExerciseEntity.KEY_ID)
      @required
          UniqueId id,
      @JsonKey(name: ActiveExerciseEntity.KEY_SETS)
      @required
          List<ExerciseSet> sets,
      @JsonKey(name: ActiveExerciseEntity.KEY_REPS_TEMPO)
      @required
          int repsTempo,
      @JsonKey(name: ActiveExerciseEntity.KEY_EXERCISE_ID)
      @required
          UniqueId exerciseId}) = _ActiveExerciseEntity;
  factory ActiveExerciseEntity.fromJson(Map<String, dynamic> json) =>
      _$ActiveExerciseEntityFromJson(json);

  factory ActiveExerciseEntity.fromModel(ActiveExercise activeExercise) {
    return ActiveExerciseEntity(
        id: activeExercise.id,
        sets: [...activeExercise.sets],
        repsTempo: activeExercise.repsTempo,
        exerciseId: activeExercise.exercise.id);
  }
  ActiveExercise toModel(Exercise exercise) {
    return ActiveExercise(
        id: id, sets: [...sets], repsTempo: repsTempo, exercise: exercise);
  }

  factory ActiveExerciseEntity.fromLocalJson(Map<String, dynamic> json) {
    return ActiveExerciseEntity(
      id: json[KEY_ID] == null
          ? UniqueId()
          : UniqueId.fromString(json[KEY_ID] as String),
      sets: (jsonDecode(json[KEY_SETS] as String) as List)
          ?.map((e) => e == null
              ? null
              : ExerciseSet.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      repsTempo: json[KEY_REPS_TEMPO] as int,
      exerciseId: json[KEY_EXERCISE_ID] == null
          ? UniqueId()
          : UniqueId.fromString(json[KEY_EXERCISE_ID] as String),
    );
  }
  Map<String, dynamic> toLocalJson() => {
        KEY_ID: id.value,
        KEY_SETS: jsonEncode(sets?.map((e) => e?.toJson())?.toList()),
        KEY_REPS_TEMPO: repsTempo,
        KEY_EXERCISE_ID: exerciseId.value,
      };
}
