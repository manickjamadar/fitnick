part of 'workout_hub_bloc.dart';

@freezed
abstract class WorkoutHubEvent with _$WorkoutHubEvent {
  const factory WorkoutHubEvent.init() = _WorkoutHubInit;
  const factory WorkoutHubEvent.refreshed() = _WorkoutHubRefreshed;
}
