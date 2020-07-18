import 'package:fitnick/domain/exercise/models/sub_models/exercise_level.dart';
import 'package:flutter/material.dart';

class LevelFlash extends StatelessWidget {
  final ExerciseLevel level;

  const LevelFlash({Key key, @required this.level}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<bool> activeColors;
    final Color activeColor = Colors.yellow[800];
    if (level == ExerciseLevel.anyLevel || level == ExerciseLevel.advanced) {
      activeColors = [true, true, true];
    } else if (level == ExerciseLevel.intermediate) {
      activeColors = [true, true, false];
    } else if (level == ExerciseLevel.beginner) {
      activeColors = [true, false, false];
    } else {
      activeColors = [false, false, false];
    }
    return Row(
        children: activeColors
            .map((isActivecolor) => Icon(Icons.flash_on,
                size: 16, color: isActivecolor ? activeColor : Colors.grey))
            .toList());
  }
}
