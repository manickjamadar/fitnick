// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_target.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExerciseTarget _$ExerciseTargetFromJson(Map<String, dynamic> json) {
  return ExerciseTarget(
    name: json['name'] as String,
    category: json['category'] == null
        ? null
        : ExerciseTargetCategory.fromJson(
            json['category'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExerciseTargetToJson(ExerciseTarget instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category': instance.category?.toJson(),
    };
