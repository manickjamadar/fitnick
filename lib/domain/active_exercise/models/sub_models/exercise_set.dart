import 'package:fitnick/domain/core/unique_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'exercise_perform_type.dart';
import 'weight_unit.dart';

part "exercise_set.freezed.dart";
part "exercise_set.g.dart";

@freezed
abstract class ExerciseSet implements _$ExerciseSet {
  const ExerciseSet._();
  @JsonSerializable(explicitToJson: true)
  const factory ExerciseSet(
      {@JsonKey(name: "id") @required UniqueId id,
      @JsonKey(name: "performType") @required ExercisePerformType performType,
      @required int performCount,
      @JsonKey(name: "weightUnit") @required WeightUnit weightUnit,
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
  factory ExerciseSet.fromJson(Map<String, dynamic> json) =>
      _$ExerciseSetFromJson(json);
}
