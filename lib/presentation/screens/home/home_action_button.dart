import 'package:fitnick/presentation/core/fitnick_actions/fitnick_actions.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:flutter/material.dart';

class HomeActionButton extends StatelessWidget {
  final int currentIndex;

  const HomeActionButton({Key key, @required this.currentIndex})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        if (currentIndex == 0) {
          FitnickActions(context).onCreateWorkotuButtonPressed();
        } else {
          FitnickActions(context).onCreateExerciseButtonPressed();
        }
      },
      icon: Icon(Icons.add, color: Colors.white, size: 20),
      label: Text(currentIndex == 0 ? "Add Workout" : "Add Exercise",
          style:
              FitnickTextTheme(context).button.copyWith(color: Colors.white)),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
