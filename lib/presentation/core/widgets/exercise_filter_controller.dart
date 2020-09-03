import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/core/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import 'filter_exercise_option_chips.dart';

class ExerciseFilterController extends StatelessWidget {
  final Exercise exercise;
  final String searchTerm;
  final void Function(String term) onSearched;
  final void Function() onFilter;
  final void Function(Exercise newExercise) onExerciseChanged;

  const ExerciseFilterController(
      {Key key,
      @required this.exercise,
      @required this.searchTerm,
      @required this.onSearched,
      @required this.onFilter,
      @required this.onExerciseChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Flexible(
                child: SearchBar(
                  value: searchTerm,
                  onChanged: onSearched,
                ),
              ),
              IconButton(
                icon: Icon(Icons.filter_list,
                    color: Theme.of(context).primaryColor),
                onPressed: onFilter,
              )
            ],
          ),
        ),
        FilterExerciseOptionChips(
          exercise: exercise,
          onExerciseChanged: onExerciseChanged,
        )
      ],
    );
  }
}
