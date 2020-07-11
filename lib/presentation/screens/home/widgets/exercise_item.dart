import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import "../../../core/helpers/string_extension.dart";

class ExerciseItem extends StatelessWidget {
  final Exercise exercise;

  const ExerciseItem({Key key, @required this.exercise}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return exercise
        .failureOption()
        .fold(() => buildExerciseItem(), (a) => buildExerciseErrorCard());
  }

  Container buildExerciseErrorCard() {
    return Container(
      color: Colors.red,
      height: 30,
      child: Text(
        "Exercise Item Error",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget buildExerciseItem() {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: buildExerciseCard(),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Edit',
          color: Colors.blue,
          icon: Icons.edit,
          onTap: () {},
        ),
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () {},
        ),
      ],
    );
  }

  Widget buildExerciseCard() {
    return Card(
      margin: EdgeInsets.all(0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        // decoration: BoxDecoration(border: Border.all()),
        child: ListTile(
          leading: CircleAvatar(child: Icon(Icons.fitness_center)),
          title: Text(
            exercise.name.safeValue.capitalize(),
          ),
          subtitle: Text(
              "${exercise.level.name} , ${exercise.tool.name} , ${exercise.type.name}"),
          trailing: Text(exercise.target.name),
        ),
      ),
    );
  }
}
