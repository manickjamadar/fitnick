// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseEntity _$_$_ExerciseEntityFromJson(Map<String, dynamic> json) {
  return _$_ExerciseEntity(
    id: json['id'] == null
        ? null
        : UniqueId.fromJson(json['id'] as Map<String, dynamic>),
    name: json['name'] as String,
    level: json['level'] == null
        ? null
        : ExerciseLevel.fromJson(json['level'] as Map<String, dynamic>),
    tool: json['tool'] == null
        ? null
        : ExerciseTool.fromJson(json['tool'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : ExerciseType.fromJson(json['type'] as Map<String, dynamic>),
    target: json['target'] == null
        ? null
        : ExerciseTarget.fromJson(json['target'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ExerciseEntityToJson(_$_ExerciseEntity instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'name': instance.name,
      'level': instance.level?.toJson(),
      'tool': instance.tool?.toJson(),
      'type': instance.type?.toJson(),
      'target': instance.target?.toJson(),
    };
