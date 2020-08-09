import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/presentation/core/widgets/active_exercise_item.dart';
import 'package:flutter/material.dart';

class ActiveWorkoutPreviewScreen extends StatelessWidget {
  final ActiveWorkout activeWorkout;

  const ActiveWorkoutPreviewScreen({Key key, @required this.activeWorkout})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    const double buttonHeight = 50;
    return Scaffold(
      appBar: AppBar(
        title: Text(activeWorkout.name.safeValue),
      ),
      body: activeWorkout.activeExercises.isEmpty
          ? buildNoExercise()
          : Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 8, bottom: buttonHeight),
                  child: ListView.builder(
                    itemCount: activeWorkout.activeExercises.length,
                    itemBuilder: (_, index) {
                      final activeExercise =
                          activeWorkout.activeExercises[index];
                      return ActiveExerciseItem(
                        activeExercise: activeExercise,
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: buttonHeight,
                    child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 0,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      child: Text("Start Workout"),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
    );
  }

  Widget buildNoExercise() {
    return Center(
      child: Text("No Exercise available"),
    );
  }

  static const String routeName = "/active-workout-preview";
  static Widget generateRoute({@required ActiveWorkout activeWorkout}) {
    return ActiveWorkoutPreviewScreen(
      activeWorkout: activeWorkout,
    );
  }
}