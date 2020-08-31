import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/core/widgets/raw_exercise_tile.dart';
import 'package:flutter/material.dart';

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
        child: RawExerciseTile(
          exercise: exercise,
          leading: leading,
          trailing: trailing,
        ));
  }
}
