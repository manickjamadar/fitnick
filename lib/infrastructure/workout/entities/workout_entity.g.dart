// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkoutEntity _$_$_WorkoutEntityFromJson(Map<String, dynamic> json) {
  return _$_WorkoutEntity(
    id: json['id'] == null
        ? null
        : UniqueId.fromJson(json['id'] as Map<String, dynamic>),
    name: json['name'] as String,
    exerciseIds: (json['exerciseIds'] as List)
        ?.map((e) =>
            e == null ? null : UniqueId.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_WorkoutEntityToJson(_$_WorkoutEntity instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'name': instance.name,
      'exerciseIds': instance.exerciseIds?.map((e) => e?.toJson())?.toList(),
    };
