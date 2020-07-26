// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseSet _$_$_ExerciseSetFromJson(Map<String, dynamic> json) {
  return _$_ExerciseSet(
    id: json['id'] == null
        ? null
        : UniqueId.fromJson(json['id'] as Map<String, dynamic>),
    performType: json['performType'] == null
        ? null
        : ExercisePerformType.fromJson(
            json['performType'] as Map<String, dynamic>),
    performCount: json['performCount'] as int,
    weightUnit: json['weightUnit'] == null
        ? null
        : WeightUnit.fromJson(json['weightUnit'] as Map<String, dynamic>),
    weightCount: json['weightCount'] as int,
    rest: json['rest'] as int,
  );
}

Map<String, dynamic> _$_$_ExerciseSetToJson(_$_ExerciseSet instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'performType': instance.performType?.toJson(),
      'performCount': instance.performCount,
      'weightUnit': instance.weightUnit?.toJson(),
      'weightCount': instance.weightCount,
      'rest': instance.rest,
    };
