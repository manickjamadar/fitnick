import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/presentation/core/my_icons.dart';
import 'package:fitnick/presentation/core/widgets/error_card.dart';
import 'package:flutter/material.dart';

class WorkoutItem extends StatelessWidget {
  final Workout workout;

  const WorkoutItem({Key key, @required this.workout}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return workout
        .failureOption()
        .fold(() => buildWorkoutCard(), (a) => buildWorkoutErrorCard());
  }

  Widget buildWorkoutCard() {
    return Card(
      margin: EdgeInsets.all(0),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(MyIcons.workout),
        ),
        title: Text(workout.name.safeValue),
        subtitle: Text("${_getExerciseCount(workout)} exercises"),
      ),
    );
  }

  Widget buildWorkoutErrorCard() {
    return ErrorCard(
      title: "Workout Item Error",
    );
  }

  int _getExerciseCount(Workout workout) {
    return workout.exercises.length;
  }
}
