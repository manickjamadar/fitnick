import 'package:dartz/dartz.dart';
import 'package:fitnick/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/screens/exercise_form/exercise_form_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../../core/helpers/string_extension.dart';

class ExerciseItem extends StatelessWidget {
  final Exercise exercise;

  const ExerciseItem({Key key, @required this.exercise}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return exercise.failureOption().fold(
        () => buildExerciseItem(context), (a) => buildExerciseErrorCard());
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

  Widget buildExerciseItem(BuildContext context) {
    return Slidable(
      key: ValueKey(exercise.id.value),
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: buildExerciseCard(),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Edit',
          color: Colors.blue,
          icon: Icons.edit,
          onTap: () async {
            final String message = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) =>
                        ExerciseFormScreen.generateRoute(Some(exercise))));
            if (message != null) {
              showMessage(context, message: message, type: SuccessMessage());
            }
          },
        ),
        Builder(
          builder: (ctx) => IconSlideAction(
            caption: 'Delete',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () {
              _onExerciseDelete(context, exercise);
            },
          ),
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

  void _onExerciseDelete(BuildContext context, Exercise exercise) {
    BlocProvider.of<ExerciseActorBloc>(context)
        .add(ExerciseActorEvent.deleted(exercise: exercise));
  }
}
