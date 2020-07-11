import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/exercise/failure/exercise_failure.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_actor_event.dart';
part 'exercise_actor_state.dart';
part 'exercise_actor_bloc.freezed.dart';

class ExerciseActorBloc extends Bloc<ExerciseActorEvent, ExerciseActorState> {
  ExerciseActorBloc() : super(ExerciseActorState.initial());

  @override
  Stream<ExerciseActorState> mapEventToState(
    ExerciseActorEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
