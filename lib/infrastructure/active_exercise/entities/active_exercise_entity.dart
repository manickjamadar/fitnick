import 'package:fitnick/domain/active_exercise/sub_models/exercise_set.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_exercise_entity.freezed.dart';
part 'active_exercise_entity.g.dart';

@freezed
abstract class ActiveExerciseEntity implements _$ActiveExerciseEntity {
  static const String collectionName = "active_exercise";
  static const String KEY_ID = "id";
  static const String KEY_SETS = "sets";
  static const String KEY_REPS_TEMPO = "reps_tempo";
  static const String KEY_EXERCISE_ID = "exercise_id";
  const ActiveExerciseEntity._();
  @JsonSerializable(explicitToJson: true)
  const factory ActiveExerciseEntity(
          {@JsonKey(name: "id") @required UniqueId id,
          @JsonKey(name: "sets") @required List<ExerciseSet> sets,
          @JsonKey(name: "reps_tempo") @required int repsTempo,
          @JsonKey(name: "exercise_id") @required UniqueId exerciseId}) =
      _ActiveExerciseEntity;
  factory ActiveExerciseEntity.fromJson(Map<String, dynamic> json) =>
      _$ActiveExerciseEntityFromJson(json);
}
