import 'package:fitnick/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/application/exercise/filtered_exercise/filtered_exercise_bloc.dart';
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
      child: BlocBuilder<FilteredExerciseBloc, FilteredExerciseState>(
        builder: (_, state) {
          if (state.isLoading) {
            return buildLoading();
          }
          return state.exercises.fold(
              () => buildNoExercise(),
              (List<Exercise> exercises) =>
                  buildExercises(context, exercises, state.searchTerm));
        },
      ),
    );
  }

  Widget buildNoExercise() {
    return Center(
      child: Text("No Exercise Available"),
    );
  }

  Widget buildLoadedFailed() => Center(
        child: Text("Exercise loading failed"),
      );

  Widget buildExercises(
          BuildContext context, List<Exercise> exercises, String searchTerm) =>
      ExerciseListView(
        exercises: exercises,
        slidable: true,
        searchable: true,
        searchValue: searchTerm,
        onSearch: (term) => _onExerciseSearch(context, term),
      );

  Widget buildLoading() => Center(
        child: CircularProgressIndicator(),
      );

  void _onExerciseSearch(BuildContext context, String searchTerm) {
    BlocProvider.of<FilteredExerciseBloc>(context)
        .add(FilteredExerciseEvent.searched(term: searchTerm));
  }
}

class BlocListen {}
