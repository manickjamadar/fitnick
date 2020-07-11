import 'package:fitnick/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:fitnick/application/exercise/exercise_form/exercise_form_bloc.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/domain/exercise/facade/i_exercise_facade.dart';
import 'package:fitnick/external/local_databse_provider.dart';
import 'package:fitnick/infrastructure/exercise/data_source/i_exercise_data_source.dart';
import 'package:fitnick/infrastructure/exercise/data_source/local_exercise_data_source.dart';
import 'package:fitnick/infrastructure/exercise/facade/local_exercise_facade.dart';
import 'package:get_it/get_it.dart';
import 'package:sqflite/sqflite.dart';

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
}

void initFacade() {
  locator.registerLazySingleton<IExerciseFacade>(
      () => LocalExerciseFacade(dataSource: locator<IExerciseDataSource>()));
}

void initBloc() {
  locator.registerFactory<ExerciseFormBloc>(
      () => ExerciseFormBloc(iExerciseFacade: locator<IExerciseFacade>()));
  locator.registerFactory<ExerciseHubBloc>(
      () => ExerciseHubBloc(iExerciseFacade: locator<IExerciseFacade>()));
  locator.registerFactory<ExerciseActorBloc>(() => ExerciseActorBloc(
        exerciseFacade: locator<IExerciseFacade>(),
      ));
}
