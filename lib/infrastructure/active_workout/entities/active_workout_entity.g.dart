// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_workout_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActiveWorkoutEntity _$_$_ActiveWorkoutEntityFromJson(
    Map<String, dynamic> json) {
  return _$_ActiveWorkoutEntity(
    id: json['id'] == null
        ? null
        : UniqueId.fromJson(json['id'] as Map<String, dynamic>),
    name: json['name'] as String,
    color: json['color'] as int,
    imagePath: json['image_path'] as String,
    activeExerciseIds: (json['active_exercise_ids'] as List)
        ?.map((e) =>
            e == null ? null : UniqueId.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ActiveWorkoutEntityToJson(
        _$_ActiveWorkoutEntity instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'name': instance.name,
      'color': instance.color,
      'image_path': instance.imagePath,
      'active_exercise_ids':
          instance.activeExerciseIds?.map((e) => e?.toJson())?.toList(),
    };
