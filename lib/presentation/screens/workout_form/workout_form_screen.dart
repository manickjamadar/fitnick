import 'package:dartz/dartz.dart';
import 'package:fitnick/application/workout/workout_form/workout_form_bloc.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/presentation/core/widgets/save_button.dart';
import 'package:fitnick/presentation/screens/workout_form/widgets/workout_form_handler.dart';
import 'package:fitnick/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkoutFormScreen extends StatelessWidget {
  final String title;
  const WorkoutFormScreen({Key key, @required this.title}) : super(key: key);
  static const routeName = "/workout_form";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[buildSaveButton(context)],
      ),
      body: WorkoutFormHandler(),
    );
  }

  Widget buildSaveButton(BuildContext context) {
    return BlocBuilder<WorkoutFormBloc, WorkoutFormState>(
      builder: (_, state) => IconButton(
        onPressed: state.workout.isValid ? () => onWorkoutSave(context) : null,
        icon: Icon(Icons.check),
      ),
    );
  }

  void onWorkoutSave(BuildContext context) {
    BlocProvider.of<WorkoutFormBloc>(context).add(WorkoutFormEvent.saved());
  }

  static Widget generateRoute(Option<Workout> workoutOption) {
    return BlocProvider<WorkoutFormBloc>(
      create: (_) =>
          locator<WorkoutFormBloc>()..add(WorkoutFormEvent.init(workoutOption)),
      child: WorkoutFormScreen(
          title:
              workoutOption.fold(() => "Add Workout", (a) => "Edit Workout")),
    );
  }
}
