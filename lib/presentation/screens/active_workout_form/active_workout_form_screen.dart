import 'package:dartz/dartz.dart';
import 'package:fitnick/application/active_workout/active_workout_form/active_workout_form_cubit.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/presentation/screens/active_workout_form/widgets/active_workout_form_handler.dart';
import 'package:fitnick/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActiveWorkoutFormScreen extends StatelessWidget {
  final String title;
  const ActiveWorkoutFormScreen({Key key, @required this.title})
      : super(key: key);
  static const routeName = "/active_workout_form";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ActiveWorkoutFormHandler()),
    );
  }

  static Widget generateRoute(
      BuildContext context, Option<ActiveWorkout> activeWorkoutOption) {
    return BlocProvider<ActiveWorkoutFormCubit>(
      create: (_) => locator<ActiveWorkoutFormCubit>()
        ..init(activeWorkoutOption: activeWorkoutOption),
      child: ActiveWorkoutFormScreen(
          title: activeWorkoutOption.fold(
              () => "Add Workout", (a) => "Edit Workout")),
    );
  }
}
