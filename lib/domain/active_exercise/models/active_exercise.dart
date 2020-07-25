import 'package:fitnick/domain/active_exercise/sub_models/exercise_set.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "active_exercise.freezed.dart";

@freezed
abstract class ActiveExercise implements _$ActiveExercise {
  const ActiveExercise._();
  const factory ActiveExercise(
      {@required UniqueId id,
      @required List<ExerciseSet> sets,
      @required int repsTempo,
      @required Exercise exercise}) = _ActiveExercise;
  factory ActiveExercise.fromExercise(Exercise exercise) {
    return ActiveExercise(
        id: UniqueId(),
        repsTempo: 2,
        sets: [ExerciseSet.initial()],
        exercise: exercise.copyWith());
  }
  bool get isRepsTempoRequired {
    return sets.any((ExerciseSet s) =>
        s.performType.maybeWhen<bool>(orElse: () => false, reps: () => true));
  }

  int get performTempo => isRepsTempoRequired ? repsTempo : 1;
}
