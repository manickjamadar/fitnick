import 'package:dartz/dartz.dart';
import 'package:fitnick/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_target.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_tool.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_type.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/core/widgets/error_card.dart';
import 'package:fitnick/presentation/screens/exercise_form/exercise_form_screen.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/exercise_item_type.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/level_flash.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/small_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../../core/helpers/string_extension.dart';

class ExerciseItem extends StatelessWidget {
  static const double height = 100;
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
        (a) => buildExerciseErrorCard(context));
  }

  Widget buildExerciseErrorCard(BuildContext context) {
    return GestureDetector(
      onTap: () => _onExerciseDelete(context, exercise),
      child: ErrorCard(
        title: "Exercise Item Error",
      ),
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
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: height,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.02),
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
              color: Theme.of(context).primaryColor.withOpacity(0.5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(exercise.name.safeValue.capitalize(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  LevelFlash(level: exercise.levels.first)
                ],
              ),
              buildTargetList(exercise.primaryTargets),
              buildExtraOptionList(exercise.tools, exercise.types)
            ],
          ),
          buildCardTrailing(context)
        ],
      ),
    );
  }

  Widget buildExtraOptionList(
      List<ExerciseTool> tools, List<ExerciseType> types) {
    final newTools = [...tools];
    final newTypes = [...types];
    if (newTools.length > 1) {
      newTools.length = 1;
    }
    if (newTypes.length > 1) {
      newTypes.length = 1;
    }
    final typeList = newTypes.map((type) => Text(type.name)).toList();
    final toolList = newTools.map((tool) => Text(tool.name)).toList();
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 6,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [...typeList, buildDot(), ...toolList],
    );
  }

  Widget buildTargetList(List<ExerciseTarget> targets) {
    final newTargets = [...targets];
    if (newTargets.length > 1) {
      newTargets.length = 1;
    }
    return FittedBox(
      child: Wrap(
          spacing: 10,
          children: newTargets
              .map((target) => SmallChip(
                    color: Colors.green[400],
                    title: target.name.capitalize(),
                  ))
              .toList()),
    );
  }

  Widget buildDot({Color color = Colors.grey}) {
    return Container(
      width: 6,
      height: 6,
      margin: EdgeInsets.symmetric(horizontal: 2),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
    );
  }

  Widget buildCardTrailing(BuildContext context) {
    return exerciseItemType.when(
        normal: () => Container(),
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
  }

  void _onExerciseDelete(BuildContext context, Exercise exercise) {
    BlocProvider.of<ExerciseActorBloc>(context)
        .add(ExerciseActorEvent.deleted(exercise: exercise));
  }
}
