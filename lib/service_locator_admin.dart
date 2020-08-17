import 'package:fitnick/admin/application/cubit/tab_cubit.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void initLocator() async {
  // await initExternal();
  // initDataSource();
  // initFacade();
  initBloc();
}

void initBloc() {
  locator.registerFactory<TabCubit>(() => TabCubit());
}
