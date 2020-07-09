import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/screens/home/widgets/exerise_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExerciseTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseHubBloc, ExerciseHubState>(
      builder: (context, state) {
        return state.when(
          loading: () => buildLoading(),
          loaded: (List<Exercise> exercises) => buildExercises(exercises),
          loadedError: (_) => buildLoadedFailed(),
          reorderedError: (List<Exercise> exercises, _) =>
              buildExercises(exercises),
        );
      },
    );
  }

  Widget buildLoadedFailed() => Center(
        child: Text("Exercise loading failed"),
      );

  Widget buildExercises(List<Exercise> exercises) =>
      ExerciseListView(exercises: exercises);

  Widget buildLoading() => Center(
        child: CircularProgressIndicator(),
      );
}
