import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/unique_id.dart';
import '../../core/value/value_failure.dart';
import '../value_object/exercise_name.dart';
import 'sub_models/exercise_level.dart';
import 'sub_models/exercise_target.dart';
import 'sub_models/exercise_tool.dart';
import 'sub_models/exercise_type.dart';

part "exercise.freezed.dart";

@freezed
abstract class Exercise implements _$Exercise {
  const Exercise._();
  const factory Exercise({
    @required UniqueId id,
    @required ExerciseName name,
    @required Option<String> videoPath,
    @required Option<String> thumbnailPath,
    @required List<ExerciseLevel> levels,
    @required List<ExerciseType> types,
    @required List<ExerciseTool> tools,
    @required List<ExerciseTarget> primaryTargets,
    @required List<ExerciseTarget> secondaryTargets,
  }) = _Exercise;
  factory Exercise.initial() {
    return Exercise(
        id: UniqueId(),
        name: ExerciseName(""),
        videoPath: none(),
        thumbnailPath: none(),
        levels: [ExerciseLevel.anyLevel],
        tools: [ExerciseTool.noEquipment],
        types: [ExerciseType.warmUp],
        primaryTargets: [ExerciseTarget.fullBody],
        secondaryTargets: []);
  }
  Option<ValueFailure> failureOption() {
    if (levels.isEmpty ||
        tools.isEmpty ||
        types.isEmpty ||
        primaryTargets.isEmpty) {
      return Some(ValueFailure.optionNotSelected(invalidValue: []));
    }
    return name.value.fold((l) => Some(l), (r) => none());
  }

  bool get isValid => failureOption().isNone();
}
