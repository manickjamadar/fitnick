import 'package:fitnick/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:fitnick/application/exercise/exercise_form/exercise_form_bloc.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/application/workout/workout_form/workout_form_bloc.dart';
import 'package:fitnick/application/workout/workout_running/workout_running_bloc.dart';
import 'package:fitnick/domain/active_exercise/facade/i_active_exercise_facade.dart';
import 'package:fitnick/domain/active_workout/facade/i_active_workout_facade.dart';
import 'package:fitnick/domain/exercise/facade/i_exercise_facade.dart';
import 'package:fitnick/external/local_databse_provider.dart';
import 'package:fitnick/infrastructure/active_exercise/data_source/i_active_exercise_data_source.dart';
import 'package:fitnick/infrastructure/active_exercise/facade/active_exercise_facade.dart';
import 'package:fitnick/infrastructure/active_workout/data_source/i_active_workout_data_source.dart';
import 'package:fitnick/infrastructure/active_workout/data_source/local_active_workout_data_source.dart';
import 'package:fitnick/infrastructure/active_workout/facade/active_workout_facade.dart';
import 'package:fitnick/infrastructure/exercise/data_source/i_exercise_data_source.dart';
import 'package:fitnick/infrastructure/exercise/data_source/local_exercise_data_source.dart';
import 'package:fitnick/infrastructure/exercise/facade/local_exercise_facade.dart';
import 'package:fitnick/infrastructure/workout/data_source/i_workout_data_source.dart';
import 'package:fitnick/infrastructure/workout/data_source/local_workout_data_source.dart';
import 'package:fitnick/infrastructure/workout/facade/local_workout_facade.dart';
import 'package:get_it/get_it.dart';
import 'package:sqflite/sqflite.dart';
import "application/active_workout/active_workout_hub/active_workout_hub_cubit.dart";
import 'application/workout/workout_actor/workout_actor_bloc.dart';
import 'domain/workout/facade/i_workout_facade.dart';
import 'infrastructure/active_exercise/data_source/local_active_exercise_data_source.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  await initExternal();
  initDataSource();
  initFacade();
  initBloc();
}

Future<void> initExternal() async {
  final database = await LocalDatabaseProvider().database;
  locator.registerLazySingleton<Database>(() => database);
}

void initDataSource() {
  locator.registerLazySingleton<IExerciseDataSource>(
      () => LocalExerciseDataSource(database: locator<Database>()));
  locator.registerLazySingleton<IWorkoutDataSource>(
      () => LocalWorkoutDataSource(database: locator<Database>()));
  locator.registerLazySingleton<IActiveWorkoutDataSource>(
      () => LocalActiveWorkoutDataSource(database: locator<Database>()));
  locator.registerLazySingleton<IActiveExerciseDataSource>(
      () => LocalActiveExerciseDataSource(database: locator<Database>()));
}

void initFacade() {
  locator.registerLazySingleton<IExerciseFacade>(
      () => LocalExerciseFacade(dataSource: locator<IExerciseDataSource>()));
  locator.registerLazySingleton<IWorkoutFacade>(() => LocalWorkoutFacade(
      exerciseFacade: locator<IExerciseFacade>(),
      workoutDataSource: locator<IWorkoutDataSource>()));
  locator.registerLazySingleton<IActiveExerciseFacade>(
    () => ActiveExerciseFacade(
        exerciseFacade: locator<IExerciseFacade>(),
        dataSource: locator<IActiveExerciseDataSource>()),
  );
  locator.registerLazySingleton<IActiveWorkoutFacade>(() => ActiveWorkoutFacade(
      activeExerciseFacade: locator<IActiveExerciseFacade>(),
      dataSource: locator<IActiveWorkoutDataSource>()));
}

void initBloc() {
  locator.registerFactory<ExerciseFormBloc>(
      () => ExerciseFormBloc(iExerciseFacade: locator<IExerciseFacade>()));
  locator.registerFactory<ExerciseHubBloc>(
      () => ExerciseHubBloc(iExerciseFacade: locator<IExerciseFacade>()));
  locator.registerFactory<ExerciseActorBloc>(() => ExerciseActorBloc(
        exerciseFacade: locator<IExerciseFacade>(),
      ));
  locator.registerFactory<WorkoutFormBloc>(
      () => WorkoutFormBloc(workoutFacade: locator<IWorkoutFacade>()));
  locator.registerFactory<WorkoutActorBloc>(() => WorkoutActorBloc(
        workoutFacade: locator<IWorkoutFacade>(),
      ));
  locator.registerFactory<WorkoutRunningBloc>(() => WorkoutRunningBloc());
  locator.registerFactory<ActiveWorkoutHubCubit>(() => ActiveWorkoutHubCubit(
      activeWorkoutFacade: locator<IActiveWorkoutFacade>()));
}
