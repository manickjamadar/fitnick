import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:fitnick/application/active_workout/active_workout_actor/active_workout_actor_cubit.dart';
import 'package:fitnick/application/core/helpers/time_formatter.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/fitnick_icons.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/core/widgets/actor_dialog.dart';
import 'package:fitnick/presentation/core/widgets/label_circle.dart';
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
    final totalExercise = activeWorkout.activeExercises.length;
    return ClipRRect(
      borderRadius: BorderRadius.circular(FitnickTheme.radius),
      child: Stack(
        children: [
          buildThumbnail(),
          buildInfo(context, totalExercise),
          buildExerciseDuration(context, activeWorkout.totalDuration),
          Positioned.fill(
              child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Theme.of(context).accentColor.withOpacity(0.3),
                    onTap: () => _onItemTap(context),
                    onLongPress: () => _onItemLongPress(context),
                  )))
        ],
      ),
    );
  }

  Widget buildExerciseDuration(BuildContext context, Duration duration) {
    return Positioned(
      bottom: 0,
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 14),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.6),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(FitnickTheme.radius))),
          child: Row(
            children: [
              Icon(FitnickIcons.timer, color: Colors.white),
              SizedBox(width: 6),
              Text(formatTime(duration),
                  style: FitnickTextTheme(context)
                      .heading2
                      .copyWith(color: Colors.white)),
            ],
          )),
    );
  }

  Widget buildThumbnail() {
    return AspectRatio(
      aspectRatio: 16 / 6,
      child: Container(
        color: Colors.grey[200],
        child: activeWorkout.imagePath.fold(
            () => Container(
                  color: Colors.grey,
                ),
            (path) => Hero(
                  tag: activeWorkout.id.value,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(FitnickTheme.radius),
                    child: Image.file(
                      File(path),
                      fit: BoxFit.cover,
                      color: Colors.black.withOpacity(0.5),
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                )),
      ),
    );
  }

  Widget buildInfo(BuildContext context, int totalExercise) {
    return Container(
      padding: EdgeInsets.only(left: 26, right: 26, top: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(activeWorkout.name.safeValue.capitalize(),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: FitnickTextTheme(context)
                    .heading
                    .copyWith(color: Colors.white)),
          ),
          Column(
            children: [
              Hero(
                tag: "label-circle-${activeWorkout.id.value}",
                child: LabelCircle(
                  label: "$totalExercise",
                  radius: 120,
                ),
              ),
              Text("Exercises",
                  style: FitnickTextTheme(context)
                      .title
                      .copyWith(color: Colors.white))
            ],
          )
        ],
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

  void _onItemLongPress(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => ActorDialog(
              title: activeWorkout.name.safeValue.capitalize(),
              onEdit: () => _onEdit(context),
              onDelete: () => _onDelete(context),
            ));
  }

  void _onEdit(BuildContext context) async {
    final String message = await Navigator.of(context).push(MaterialPageRoute(
      builder: (_) =>
          ActiveWorkoutFormScreen.generateRoute(context, Some(activeWorkout)),
    ));
    if (message != null) {
      showMessage(context, message: message, type: SuccessMessage());
    }
  }

  void _onDelete(BuildContext context) {
    BlocProvider.of<ActiveWorkoutActorCubit>(context).delete(activeWorkout);
  }
}
