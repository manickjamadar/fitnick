import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/presentation/core/widgets/buttom_button.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/exerise_list_view.dart';
import 'package:fitnick/presentation/screens/workout_running_screen/workout_running_screen.dart';
import 'package:flutter/material.dart';

class PreviewWorkoutScreen extends StatelessWidget {
  const PreviewWorkoutScreen({Key key, @required this.workout})
      : super(key: key);
  final Workout workout;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(workout.name.safeValue),
      ),
      body: Stack(
        children: <Widget>[
          ExerciseListView(
            exercises: workout.exercises,
          ),
          BottomButton(
            title: "Start Workout",
            onPressed: workout.exercises.isEmpty
                ? null
                : () => _onStartWorkout(context),
          )
        ],
      ),
    );
  }

  void _onStartWorkout(BuildContext context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => WorkoutRunningScreen.generateRoute(workout: workout),
        ));
  }

  static const String routeName = "/preview_workout";
  static Widget generateRoute(Workout workout) {
    return PreviewWorkoutScreen(workout: workout);
  }
}
