// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_exercise_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActiveExerciseEntity _$_$_ActiveExerciseEntityFromJson(
    Map<String, dynamic> json) {
  return _$_ActiveExerciseEntity(
    id: json['id'] == null
        ? null
        : UniqueId.fromJson(json['id'] as Map<String, dynamic>),
    sets: (json['sets'] as List)
        ?.map((e) =>
            e == null ? null : ExerciseSet.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    repsTempo: json['reps_tempo'] as int,
    exerciseId: json['exercise_id'] == null
        ? null
        : UniqueId.fromJson(json['exercise_id'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ActiveExerciseEntityToJson(
        _$_ActiveExerciseEntity instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'sets': instance.sets?.map((e) => e?.toJson())?.toList(),
      'reps_tempo': instance.repsTempo,
      'exercise_id': instance.exerciseId?.toJson(),
    };
