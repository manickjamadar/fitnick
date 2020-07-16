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
    videoPath: json['video_path'] as String,
    thumbnailPath: json['thumbnail_path'] as String,
    levels: (json['levels'] as List)
        ?.map((e) => e == null
            ? null
            : ExerciseLevel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tools: (json['tools'] as List)
        ?.map((e) =>
            e == null ? null : ExerciseTool.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    types: (json['types'] as List)
        ?.map((e) =>
            e == null ? null : ExerciseType.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    primaryTargets: (json['primary_targets'] as List)
        ?.map((e) => e == null
            ? null
            : ExerciseTarget.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    secondaryTargets: (json['secondary_targets'] as List)
        ?.map((e) => e == null
            ? null
            : ExerciseTarget.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ExerciseEntityToJson(_$_ExerciseEntity instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'name': instance.name,
      'video_path': instance.videoPath,
      'thumbnail_path': instance.thumbnailPath,
      'levels': instance.levels?.map((e) => e?.toJson())?.toList(),
      'tools': instance.tools?.map((e) => e?.toJson())?.toList(),
      'types': instance.types?.map((e) => e?.toJson())?.toList(),
      'primary_targets':
          instance.primaryTargets?.map((e) => e?.toJson())?.toList(),
      'secondary_targets':
          instance.secondaryTargets?.map((e) => e?.toJson())?.toList(),
    };
