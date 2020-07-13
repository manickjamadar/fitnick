import 'package:fitnick/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/exerise_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExerciseTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ExerciseActorBloc, ExerciseActorState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            success: (String message) {
              showMessage(context, message: message, type: SuccessMessage());
              BlocProvider.of<ExerciseHubBloc>(context)
                  .add(ExerciseHubEvent.refreshed());
            },
            error: (String message) {
              showMessage(context, message: message, type: ErrorMessage());
            });
      },
      child: BlocBuilder<ExerciseHubBloc, ExerciseHubState>(
        builder: (context, state) {
          return state.when(
            loading: () => buildLoading(),
            loaded: (List<Exercise> exercises) => buildExercises(exercises),
            loadedError: (_) => buildLoadedFailed(),
          );
        },
      ),
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

class BlocListen {}
