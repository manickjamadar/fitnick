import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/core/widgets/search_bar.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/exercise_item.dart';
import 'package:flutter/material.dart';

class ExerciseListView extends StatelessWidget {
  final List<Exercise> exercises;
  final bool slidable;
  final bool searchable;

  const ExerciseListView(
      {Key key,
      this.slidable = false,
      @required this.exercises,
      this.searchable = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return exercises.isEmpty
        ? buildEmptyExercise()
        : buildExerciseList(context);
  }

  ListView buildExerciseList(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index == 0 && searchable) {
          return buildSearchBar(context);
        }
        final realIndex = index - (searchable ? 1 : 0);
        final exercise = exercises[realIndex];
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          child: ExerciseItem(
            slidable: slidable,
            exercise: exercise,
          ),
        );
      },
      itemCount: exercises.length + (searchable ? 1 : 0),
    );
  }

  Widget buildSearchBar(BuildContext context) {
    return SearchBar(
      onChanged: (value) {
        print(value);
      },
    );
  }

  Center buildEmptyExercise() => Center(
        child: Text("No Exercise avaialble"),
      );
}
