import 'package:fitnick/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/application/exercise/filtered_exercise/filtered_exercise_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/core/fitnick_actions/fitnick_actions.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/core/widgets/action_button.dart';
import 'package:fitnick/presentation/core/widgets/not_found_action.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/filtered_exerise_list_view.dart';
import 'package:fitnick/shared/fitnick_image_provider.dart';
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
              () => buildNoExercise(context),
              (List<Exercise> exercises) =>
                  buildExercises(context, state, exercises));
        },
      ),
    );
  }

  Widget buildNoExercise(BuildContext context) {
    return NotFoundAction(
      image: Image.asset(FitnickImageProvider.no_exercise),
      title: "No Exercise Available",
      actionButton: ActionButton(
        label: "Create Exercise",
        onPressed: () =>
            FitnickActions(context).onCreateExerciseButtonPressed(),
        elevation: 10,
      ),
    );
  }

  Widget buildLoadedFailed() => Center(
        child: Text("Exercise loading failed"),
      );

  Widget buildExercises(BuildContext context, FilteredExerciseState state,
          List<Exercise> exercises) =>
      FilteredExerciseListView(
        exercises: exercises,
        slidable: true,
        searchable: true,
        searchValue: state.searchTerm,
        filteredExercise: state.filteredExercise,
        onExerciseChanged: (newExercise) =>
            _onExerciseFiltered(context, newExercise),
        onSearch: (term) => _onExerciseSearch(context, term),
      );

  Widget buildLoading() => Center(
        child: CircularProgressIndicator(),
      );

  void _onExerciseSearch(BuildContext context, String searchTerm) {
    BlocProvider.of<FilteredExerciseBloc>(context)
        .add(FilteredExerciseEvent.searched(term: searchTerm));
  }

  void _onExerciseFiltered(BuildContext context, Exercise exercise) {
    BlocProvider.of<FilteredExerciseBloc>(context)
        .add(FilteredExerciseEvent.filtered(exercise));
  }
}
