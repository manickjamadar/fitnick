import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/presentation/core/widgets/exercise_title.dart';
import 'package:fitnick/presentation/screens/active_workout_running_screen/widgets/exercise_running_bar.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/video_preview.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/level_flash.dart';
import 'package:flutter/material.dart';
import "../../core/helpers/string_extension.dart";

class ActiveWorkoutRunningScreen extends StatelessWidget {
  final ActiveWorkout activeWorkout;

  const ActiveWorkoutRunningScreen({Key key, @required this.activeWorkout})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(activeWorkout.name.safeValue.capitalize()),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        textTheme: Theme.of(context).textTheme,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExerciseRunningBar(
              totalExercise: 6,
              currentExerciseIndex: 3,
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: PageController(initialPage: 0),
              itemCount: activeWorkout.activeExercises.length,
              itemBuilder: (_, index) {
                final activeExercise = activeWorkout.activeExercises[index];
                return buildActiveExerciseView(activeExercise);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildActiveExerciseView(ActiveExercise activeExercise) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          VideoPreview(path: activeExercise.exercise.videoPath),
          SizedBox(
            height: 20,
          ),
          ExerciseTitle(
            title: activeExercise.exercise.name.safeValue,
          ),
          SizedBox(
            height: 14,
          ),
          LevelFlash(
            level: activeExercise.exercise.levels.first,
            size: 22,
          ),
        ],
      ),
    );
  }

  static const String routeName = "/active-workout-running";
  static Widget generateRoute({@required ActiveWorkout activeWorkout}) {
    return ActiveWorkoutRunningScreen(
      activeWorkout: activeWorkout,
    );
  }
}
