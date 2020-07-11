import 'package:dartz/dartz.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/core/my_icons.dart';
import 'package:fitnick/presentation/screens/exercise_form/exercise_form_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class AddButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      // both default to 16
      marginRight: 18,
      marginBottom: 20,
      // animatedIcon: AnimatedIcons.menu_close,
      // animatedIconTheme: IconThemeData(size: 22.0),
      // this is ignored if animatedIcon is non null
      child: Icon(Icons.add),
      // visible: true,
      // If true user is forced to close dial manually
      // by tapping main button and overlay is not rendered.
      closeManually: false,
      curve: Curves.bounceIn,
      overlayColor: Colors.white,
      overlayOpacity: 0.6,
      // onOpen: () => print('OPENING DIAL'),
      // onClose: () => print('DIAL CLOSED'),
      tooltip: 'Add',
      heroTag: 'speed-dial-hero-tag',
      // backgroundColor: Colors.white,
      // foregroundColor: Colors.black,
      elevation: 4,
      shape: CircleBorder(),
      children: [
        SpeedDialChild(
            child: Icon(MyIcons.routine),
            backgroundColor: Colors.red,
            label: 'Add Workout Routine',
            labelStyle: TextStyle(fontSize: 12.0),
            onTap: () => print('Add Workout Routine')),
        SpeedDialChild(
          child: Icon(MyIcons.exercise),
          backgroundColor: Colors.blue,
          label: 'Add Exercise',
          labelStyle: TextStyle(fontSize: 12.0),
          onTap: () => onAddExercise(context),
        ),
        SpeedDialChild(
          child: Icon(MyIcons.progression),
          backgroundColor: Colors.green,
          label: 'Add Progression',
          labelStyle: TextStyle(fontSize: 12.0),
          onTap: () => print('Add Progression'),
        ),
      ],
    );
  }

  void onAddExercise(BuildContext context) async {
    String message = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => ExerciseFormScreen.generateRoute(none())));
    showMessage(context, message: message, type: SuccessMessage());
  }
}
