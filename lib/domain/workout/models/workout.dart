import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/core/value/value_failure.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/workout/value_object/workout_name.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part "workout.freezed.dart";

@freezed
abstract class Workout implements _$Workout {
  const Workout._();
  const factory Workout(
      {@required UniqueId id,
      @required WorkoutName name,
      @required List<Exercise> exercises}) = _Workout;
  factory Workout.initial() {
    return Workout(id: UniqueId(), name: WorkoutName(""), exercises: []);
  }
  Option<ValueFailure> failureOption() {
    return name.value.fold((l) => Some(l), (r) => none());
  }

  bool get isValid => failureOption().isNone();
}
