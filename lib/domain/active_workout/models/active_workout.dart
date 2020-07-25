import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/active_exercise/active_exercise.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/core/value/value_failure.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/domain/workout/value_object/workout_name.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'active_workout.freezed.dart';

@freezed
abstract class ActiveWorkout implements _$ActiveWorkout {
  const ActiveWorkout._();
  const factory ActiveWorkout({
    @required UniqueId id,
    @required WorkoutName name,
    @required Color color,
    @required Option<String> imagePath,
    @required List<ActiveExercise> activeExercises,
  }) = _ActiveWorkout;

  factory ActiveWorkout.initial() {
    return ActiveWorkout(
        id: UniqueId(),
        name: WorkoutName(""),
        color: Colors.grey,
        imagePath: none(),
        activeExercises: []);
  }

  factory ActiveWorkout.fromWorkout(Workout workout) {
    return ActiveWorkout(
        id: workout.id,
        name: workout.name,
        color: Colors.grey,
        imagePath: none(),
        activeExercises: workout.exercises
            .map((exercise) => ActiveExercise.fromExercise(exercise))
            .toList());
  }

  Option<ValueFailure> failureOption() {
    return name.value.fold((l) => Some(l), (r) => none());
  }

  bool get isValid => failureOption().isNone();
}
