import 'package:fitnick/admin/presentation/core/app_admin.dart';
import 'package:fitnick/service_locator_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'admin/application/cubit/tab_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initLocator();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (_) => locator<TabCubit>(),
    )
  ], child: AdminApp()));
}
