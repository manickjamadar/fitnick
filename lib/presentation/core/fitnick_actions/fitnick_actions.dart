import 'package:dartz/dartz.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/screens/active_workout_form/active_workout_form_screen.dart';
import 'package:fitnick/presentation/screens/exercise_form/exercise_form_screen.dart';
import 'package:fitnick/presentation/screens/music_center_screen/music_center_screen.dart';
import 'package:fitnick/presentation/screens/store_screen/store_screen.dart';
import 'package:flutter/material.dart';

class FitnickActions {
  final BuildContext context;

  const FitnickActions(this.context);

  void onCreateExerciseButtonPressed() async {
    String message = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => ExerciseFormScreen.generateRoute(context, none())));
    if (message != null) {
      showMessage(context, message: message, type: SuccessMessage());
    }
  }

  void onCreateWorkotuButtonPressed() async {
    String message = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) =>
                ActiveWorkoutFormScreen.generateRoute(context, none())));
    if (message != null) {
      showMessage(context, message: message, type: SuccessMessage());
    }
  }

  void goMusicCenter() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => MusicCenterScreen.generateRoute(),
        ));
  }

  void goStore() {
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => StoreScreen.generateRoute(context)));
  }
}
