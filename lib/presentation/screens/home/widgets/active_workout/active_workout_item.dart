import 'package:dartz/dartz.dart';
import 'package:fitnick/application/active_workout/active_workout_actor/active_workout_actor_cubit.dart';
import 'package:fitnick/application/core/helpers/time_formatter.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/screens/active_workout_form/active_workout_form_screen.dart';
import 'package:fitnick/presentation/screens/active_workout_preview_screen/active_workout_preview_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "../../../../core/helpers/string_extension.dart";

class ActiveWorkoutItem extends StatelessWidget {
  final ActiveWorkout activeWorkout;

  const ActiveWorkoutItem({Key key, @required this.activeWorkout})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => _onItemTap(context),
        title: Text(activeWorkout.name.safeValue.capitalize(),
            style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(
            "${activeWorkout.activeExercises.length} exercises - ${formatTime(activeWorkout.totalDuration)} "),
        trailing: PopupMenuButton(
          onSelected: (value) {
            if (value == 0) {
              _onEdit(context);
            } else if (value == 1) {
              _onDelete(context);
            }
          },
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("Edit"),
                value: 0,
              ),
              PopupMenuItem(
                child: Text("Delete"),
                value: 1,
              ),
            ];
          },
        ),
      ),
    );
  }

  void _onItemTap(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ActiveWorkoutPreviewScreen.generateRoute(
              activeWorkout: activeWorkout),
        ));
  }

  void _onEdit(BuildContext context) async {
    final String message = await Navigator.of(context).push(MaterialPageRoute(
      builder: (_) =>
          ActiveWorkoutFormScreen.generateRoute(Some(activeWorkout)),
    ));
    if (message != null) {
      showMessage(context, message: message, type: SuccessMessage());
    }
  }

  void _onDelete(BuildContext context) {
    BlocProvider.of<ActiveWorkoutActorCubit>(context).delete(activeWorkout);
  }
}
