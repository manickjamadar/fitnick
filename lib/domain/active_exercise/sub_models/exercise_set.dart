import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/active_exercise/sub_models/exercise_perform_type.dart';
import 'package:fitnick/domain/active_exercise/sub_models/weight_unit.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "exercise_set.freezed.dart";

@freezed
abstract class ExerciseSet implements _$ExerciseSet {
  const ExerciseSet._();
  const factory ExerciseSet(
      {@required UniqueId id,
      @required ExercisePerformType performType,
      @required int performCount,
      @required WeightUnit weightUnit,
      @required int weightCount,
      @required int rest}) = _ExerciseSet;
  factory ExerciseSet.initial() {
    return ExerciseSet(
        id: UniqueId(),
        performType: ExercisePerformType.reps(),
        performCount: 10,
        weightUnit: WeightUnit.kg(),
        weightCount: 0,
        rest: 60);
  }
}
