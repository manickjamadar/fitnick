import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/presentation/core/my_icons.dart';
import 'package:fitnick/presentation/core/widgets/error_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class WorkoutItem extends StatelessWidget {
  final Workout workout;

  const WorkoutItem({Key key, @required this.workout}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return workout
        .failureOption()
        .fold(() => buildWorkoutItem(), (a) => buildWorkoutErrorCard());
  }

  Widget buildWorkoutItem() {
    return Slidable(
      key: ValueKey(workout.id.value),
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: buildWorkoutCard(),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: "Edit",
          color: Colors.blue,
          icon: Icons.edit,
          onTap: () {},
        ),
        IconSlideAction(
          caption: "Delete",
          color: Colors.red,
          icon: Icons.delete,
          onTap: () {},
        ),
      ],
    );
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
