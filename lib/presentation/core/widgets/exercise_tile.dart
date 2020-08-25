import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/core/widgets/custom_chip.dart';
import 'package:fitnick/presentation/core/widgets/exercise_thumbnail.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/level_flash.dart';
import 'package:flutter/material.dart';
import "../helpers/string_extension.dart";

class ExerciseTile extends StatelessWidget {
  final Exercise exercise;
  final void Function() onPressed;
  final void Function() onLongPressed;
  final Widget leading;
  final Widget trailing;
  const ExerciseTile(
      {Key key,
      @required this.exercise,
      this.onLongPressed,
      this.onPressed,
      this.leading,
      this.trailing})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double height = 86;
    return InkWell(
      borderRadius: BorderRadius.circular(FitnickTheme.radius),
      highlightColor: Colors.transparent,
      splashColor: Theme.of(context).primaryColor.withOpacity(0.1),
      onTap: () {
        if (onPressed != null) {
          onPressed();
        }
      },
      onLongPress: () {
        if (onLongPressed != null) {
          onLongPressed();
        }
      },
      child: Container(
          height: height,
          // color: Colors.green,
          child: Row(
            children: [
              if (leading != null) leading,
              Expanded(child: buildRawExerciseInfo(height, context)),
              if (trailing != null) trailing
            ],
          )),
    );
  }

  Widget buildRawExerciseInfo(double height, BuildContext context) {
    return Row(
      children: [
        ExerciseThumbnail(
          exercise: exercise,
          size: height,
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          child: Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomChip(
                  color: Colors.blue,
                  selected: true,
                  label: Text(
                    exercise.primaryTargets.first.name.capitalize(),
                    style: FitnickTextTheme(context).smallButton,
                  ),
                ),
                Text(
                  exercise.name.safeValue.capitalize(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: FitnickTextTheme(context).heading,
                ),
                LevelFlash(
                  level: exercise.levels.first,
                ),
                SizedBox(
                  height: 6,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}