import 'package:dartz/dartz.dart';
import 'package:fitnick/application/exercise/exercise_form/exercise_form_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExerciseFormScreen extends StatelessWidget {
  static const routeName = "/exercise_form";
  static Widget generateRoute(Option<Exercise> exerciseOption) {
    return BlocProvider<ExerciseFormBloc>(
      create: (_) => locator<ExerciseFormBloc>()
        ..add(ExerciseFormEvent.init(exerciseOption)),
      child: ExerciseFormScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Exercise"),
      ),
    );
  }
}
