import 'package:fitnick/domain/exercise/models/sub_models/exercise_level.dart';
import 'package:flutter/material.dart';

class ExerciseLevelSlider extends StatelessWidget {
  final ExerciseLevel currentLevel;
  final void Function(double) onChanged;

  const ExerciseLevelSlider(
      {Key key, @required this.currentLevel, @required this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double currentLevelIndex = ExerciseLevel.all
        .indexWhere((element) => element == currentLevel)
        .toDouble();
    return Slider(
      divisions: ExerciseLevel.all.length - 1,
      value: currentLevelIndex,
      max: (ExerciseLevel.all.length - 1).toDouble(),
      min: 0,
      onChanged: onChanged,
    );
  }
}
