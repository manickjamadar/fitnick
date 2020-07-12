import 'package:fitnick/domain/core/unique_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part "workout_entity.freezed.dart";
part "workout_entity.g.dart";

@freezed
abstract class WorkoutEntity implements _$WorkoutEntity {
  static const String collectionName = "workout";
  static const String KEY_ID = "id";
  static const String KEY_NAME = "name";
  static const String KEY_EXERCISE_IDS = "execise_ids";
  const WorkoutEntity._();
  @JsonSerializable(explicitToJson: true)
  const factory WorkoutEntity(
      {@required UniqueId id,
      @required String name,
      @required List<UniqueId> exerciseIds}) = _WorkoutEntity;
  factory WorkoutEntity.fromJson(Map<String, dynamic> json) =>
      _$WorkoutEntityFromJson(json);
}
