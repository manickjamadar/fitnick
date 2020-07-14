import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/presentation/core/widgets/buttom_button.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/exerise_list_view.dart';
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
            onPressed: () {},
          )
        ],
      ),
    );
  }

  static const String routeName = "/preview_workout";
  static Widget generateRoute(Workout workout) {
    return PreviewWorkoutScreen(workout: workout);
  }
}
