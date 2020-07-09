import 'package:fitnick/application/exercise/exercise_form/exercise_form_bloc.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/domain/exercise/facade/i_exercise_facade.dart';
import 'package:fitnick/infrastructure/exercise/facade/demo_exercise_facade.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void initLocator() {
  initFacade();
  initBloc();
}

void initFacade() {
  locator.registerLazySingleton<IExerciseFacade>(() => DemoExerciseFacade());
}

void initBloc() {
  locator.registerFactory<ExerciseFormBloc>(
      () => ExerciseFormBloc(iExerciseFacade: locator<IExerciseFacade>()));
  locator.registerFactory<ExerciseHubBloc>(
      () => ExerciseHubBloc(iExerciseFacade: locator<IExerciseFacade>()));
}
