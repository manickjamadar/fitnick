import 'package:dartz/dartz_unsafe.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';

Duration calculateExerciseDuration(List<ActiveExercise> activeExercises) {
  int seconds = 0;
  activeExercises.forEach((ae) {
    ae.sets.forEach((s) {
      seconds += s.performCount * ae.performTempo(s.performType) + s.rest;
    });
  });

  return Duration(seconds: seconds);
}
