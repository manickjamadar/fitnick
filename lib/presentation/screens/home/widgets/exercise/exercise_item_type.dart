import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "exercise_item_type.freezed.dart";

@freezed
abstract class ExerciseItemType with _$ExerciseItemType {
  const factory ExerciseItemType.normal() = _ExerciseTypeNormal;
  const factory ExerciseItemType.removable(
      {@required void Function(Exercise) onRemove}) = _ExerciseTypeRemoval;
  const factory ExerciseItemType.selectable(
      {@required void Function(bool) onSelect,
      @Default(false) bool selected}) = _ExerciseTypeSelectable;
}
