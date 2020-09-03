import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_level.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_target.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_tool.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_type.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/delete_chip.dart';
import 'package:flutter/material.dart';

class FilterExerciseOptionChips extends StatelessWidget {
  final Exercise exercise;
  final double spacing;
  final void Function(Exercise newExercise) onExerciseChanged;
  const FilterExerciseOptionChips(
      {Key key,
      @required this.exercise,
      @required this.onExerciseChanged,
      this.spacing = 10})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: spacing,
      runSpacing: spacing,
      children: <Widget>[
        ...buildOptionChips<ExerciseLevel>(
          options: exercise.levels,
          optionLabel: (option) => option.name,
          color: Colors.blue,
          onOptionsChanged: (newLevels) =>
              onExerciseChanged(exercise.copyWith(levels: newLevels)),
        ),
        ...buildOptionChips<ExerciseType>(
          options: exercise.types,
          optionLabel: (option) => option.name,
          color: Colors.green,
          onOptionsChanged: (newTypes) =>
              onExerciseChanged(exercise.copyWith(types: newTypes)),
        ),
        ...buildOptionChips<ExerciseTool>(
          options: exercise.tools,
          optionLabel: (option) => option.name,
          color: Colors.purple,
          onOptionsChanged: (newTools) =>
              onExerciseChanged(exercise.copyWith(tools: newTools)),
        ),
        ...buildOptionChips<ExerciseTarget>(
          options: exercise.primaryTargets,
          optionLabel: (option) => option.name,
          color: Colors.purple,
          onOptionsChanged: (newTargets) =>
              onExerciseChanged(exercise.copyWith(primaryTargets: newTargets)),
        ),
        ...buildOptionChips<ExerciseTarget>(
          options: exercise.secondaryTargets,
          optionLabel: (option) => option.name,
          color: Colors.brown,
          onOptionsChanged: (newTargets) => onExerciseChanged(
              exercise.copyWith(secondaryTargets: newTargets)),
        ),
      ],
    );
  }

  List<DeleteChip> buildOptionChips<T>(
      {@required List<T> options,
      @required String Function(T option) optionLabel,
      @required void Function(List<T> newOptions) onOptionsChanged,
      Color color = Colors.grey}) {
    return options
        .map((option) => DeleteChip(
              label: optionLabel(option),
              color: color,
              onDelete: () =>
                  onOptionsChanged(_onOptionDelete(option, options)),
            ))
        .toList();
  }

  List<T> _onOptionDelete<T>(T deletableOption, List<T> sourceOptions) {
    final newOptions = [...sourceOptions];
    newOptions.remove(deletableOption);
    return newOptions;
  }
}
