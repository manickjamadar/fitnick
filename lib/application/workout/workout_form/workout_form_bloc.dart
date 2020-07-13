import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_form_event.dart';
part 'workout_form_state.dart';
part 'workout_form_bloc.freezed.dart';

class WorkoutFormBloc extends Bloc<WorkoutFormEvent, WorkoutFormState> {
  WorkoutFormBloc() : super(WorkoutFormState.initial());

  @override
  Stream<WorkoutFormState> mapEventToState(
    WorkoutFormEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
