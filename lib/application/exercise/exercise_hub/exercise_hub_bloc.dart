import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/exercise/failure/exercise_failure.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_hub_event.dart';
part 'exercise_hub_state.dart';
part 'exercise_hub_bloc.freezed.dart';

class ExerciseHubBloc extends Bloc<ExerciseHubEvent, ExerciseHubState> {
  ExerciseHubBloc() : super(ExerciseHubState.loading());

  @override
  Stream<ExerciseHubState> mapEventToState(
    ExerciseHubEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
