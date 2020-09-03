import 'package:fitnick/domain/exercise/models/sub_models/exercise_level.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/level_flash.dart';
import 'package:flutter/material.dart';

import 'exercise_level_slider.dart';

class ExerciseLevelSelector extends StatelessWidget {
  final ExerciseLevel level;
  final void Function(ExerciseLevel level) onChanged;

  const ExerciseLevelSelector({
    Key key,
    @required this.level,
    @required this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${level.name} Level", style: FitnickTextTheme(context).title),
        SizedBox(height: 6),
        LevelFlash(
          level: level,
        ),
        ExerciseLevelSlider(
          currentLevel: level,
          onChanged: (value) {
            final newLevelIndex = value.floor();
            if (onChanged != null) {
              onChanged(ExerciseLevel.all[newLevelIndex]);
            }
          },
        )
      ],
    );
  }
}
