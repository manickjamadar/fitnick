part of 'exercise_hub_bloc.dart';

@freezed
abstract class ExerciseHubEvent with _$ExerciseHubEvent {
  const factory ExerciseHubEvent.init() = _ExerciseHubInit;
  const factory ExerciseHubEvent.refreshed() = _ExerciseHubRefreshed;
}
