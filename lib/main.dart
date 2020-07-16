import 'package:fitnick/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'application/workout/workout_actor/workout_actor_bloc.dart';
import 'application/workout/workout_hub/workout_hub_bloc.dart';
import 'domain/workout/facade/i_workout_facade.dart';
import 'presentation/core/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocator();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<ExerciseHubBloc>(
        create: (_) => locator<ExerciseHubBloc>()..add(ExerciseHubEvent.init()),
      ),
      BlocProvider<ExerciseActorBloc>(
        create: (_) => locator<ExerciseActorBloc>(),
      ),
      BlocProvider<WorkoutHubBloc>(
        create: (ctx) => WorkoutHubBloc(
            workoutFacade: locator<IWorkoutFacade>(),
            exerciseHubBloc: BlocProvider.of<ExerciseHubBloc>(ctx))
          ..add(WorkoutHubEvent.init()),
      ),
      BlocProvider<WorkoutActorBloc>(
        create: (_) => locator<WorkoutActorBloc>(),
      ),
    ],
    child: App(),
  ));
}
