import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/core/app.dart';

void main() {
  initLocator();
  runApp(BlocProvider<ExerciseHubBloc>(
      create: (_) => locator<ExerciseHubBloc>()..add(ExerciseHubEvent.init()),
      child: App()));
}
