import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise_item.dart';
import 'package:flutter/material.dart';

class ExerciseListView extends StatelessWidget {
  final List<Exercise> exercises;

  const ExerciseListView({Key key, @required this.exercises}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return exercises.isEmpty ? buildEmptyExercise() : buildExerciseList();
  }

  ListView buildExerciseList() {
    return ListView.builder(
      itemBuilder: (context, index) {
        final exercise = exercises[index];
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          child: ExerciseItem(
            exercise: exercise,
          ),
        );
      },
      itemCount: exercises.length,
    );
  }

  Center buildEmptyExercise() => Center(
        child: Text("No Exercise avaialble"),
      );
}
