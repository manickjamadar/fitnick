import 'package:dartz/dartz.dart';
import 'package:fitnick/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:fitnick/application/workout/workout_hub/workout_hub_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/core/widgets/error_card.dart';
import 'package:fitnick/presentation/screens/exercise_form/exercise_form_screen.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/exercise_item_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../../core/helpers/string_extension.dart';

class ExerciseItem extends StatelessWidget {
  final Exercise exercise;
  final ExerciseItemType exerciseItemType;
  final bool slidable;
  const ExerciseItem(
      {Key key,
      @required this.exercise,
      this.slidable = false,
      this.exerciseItemType = const ExerciseItemType.normal()})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return exercise.failureOption().fold(
        () =>
            slidable ? buildExerciseItem(context) : buildExerciseCard(context),
        (a) => buildExerciseErrorCard());
  }

  Widget buildExerciseErrorCard() {
    return ErrorCard(
      title: "Exercise Item Error",
    );
  }

  Widget buildExerciseItem(BuildContext context) {
    return Slidable(
      key: ValueKey(exercise.id.value),
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: buildExerciseCard(context),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Edit',
          color: Colors.blue,
          icon: Icons.edit,
          onTap: () => _onEdit(context),
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

  Widget buildExerciseCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: exerciseItemType.maybeWhen(
                orElse: () => Colors.transparent,
                selectable: (onSelect, selected) {
                  return selected
                      ? Theme.of(context).primaryColor
                      : Colors.transparent;
                },
              ),
              width: 3),
          borderRadius: BorderRadius.circular(6)),
      child: Card(
        margin: EdgeInsets.all(0),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          // decoration: BoxDecoration(border: Border.all()),
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.fitness_center)),
            title: Text(
              exercise.name.safeValue.capitalize(),
            ),
            subtitle: Text(exercise.target.name),
            trailing: buildCardTrailing(context),
          ),
        ),
      ),
    );
  }

  Widget buildCardTrailing(BuildContext context) {
    return exerciseItemType.when(
        normal: () => null,
        removable: (onRemove) {
          return IconButton(
            onPressed: () {
              if (onRemove != null) {
                onRemove(exercise);
              }
            },
            icon: Icon(
              Icons.clear,
              color: Colors.red,
            ),
          );
        },
        selectable: (onSelect, selected) {
          return IconButton(
              onPressed: () {
                if (onSelect != null) {
                  onSelect(selected);
                }
              },
              icon: Icon(
                Icons.check_box,
                color: selected
                    ? Theme.of(context).primaryColor
                    : Colors.grey[400],
              ));
        });
  }

  void _onEdit(BuildContext context) async {
    final String message = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => ExerciseFormScreen.generateRoute(Some(exercise))));
    if (message != null) {
      showMessage(context, message: message, type: SuccessMessage());
    }
    BlocProvider.of<WorkoutHubBloc>(context).add(WorkoutHubEvent.refreshed());
  }

  void _onExerciseDelete(BuildContext context, Exercise exercise) {
    BlocProvider.of<ExerciseActorBloc>(context)
        .add(ExerciseActorEvent.deleted(exercise: exercise));
  }
}
