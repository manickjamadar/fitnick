import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/core/fitnick_actions/fitnick_actions.dart';
import 'package:fitnick/presentation/core/widgets/action_button.dart';
import 'package:fitnick/presentation/core/widgets/actor_dialog.dart';
import 'package:fitnick/presentation/core/widgets/exercise_filter_controller.dart';
import 'package:fitnick/presentation/core/widgets/exercise_tile.dart';
import 'package:fitnick/presentation/core/widgets/not_found_action.dart';
import '../../../../core/helpers/string_extension.dart';
import 'package:fitnick/shared/fitnick_image_provider.dart';
import 'package:flutter/material.dart';

class FilteredExerciseListView extends StatelessWidget {
  final List<Exercise> exercises;
  final bool slidable;
  final bool searchable;
  final String searchValue;
  final Exercise filteredExercise;
  final void Function(Exercise newExercise) onExerciseChanged;
  final void Function(String term) onSearch;

  const FilteredExerciseListView(
      {Key key,
      this.slidable = false,
      this.onSearch,
      this.searchValue = "",
      @required this.filteredExercise,
      @required this.onExerciseChanged,
      @required this.exercises,
      this.searchable = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return exercises.isEmpty && !searchable
        ? buildEmptyExercise(context)
        : buildExerciseList(context);
  }

  Widget buildExerciseList(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index == 0 && searchable) {
          return buildListHeader(context);
        }
        final realIndex = index - (searchable ? 1 : 0);
        final exercise = exercises[realIndex];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: ExerciseTile(
            exercise: exercise,
            trailing: Row(
              children: [Icon(Icons.arrow_forward_ios, size: 16)],
            ),
            onPressed: () => FitnickActions(context)
                .goExerciseDetailScreen(context, exercise: exercise),
            onLongPressed: () => showDialog(
                context: context,
                builder: (_) => ActorDialog(
                      title: exercise.name.safeValue.capitalize(),
                      onDelete: () =>
                          FitnickActions(context).onDeleteExercise(exercise),
                      onEdit: () =>
                          FitnickActions(context).onEditExercise(exercise),
                    )),
          ),
        );
      },
      itemCount: exercises.length + (searchable ? 1 : 0),
    );
  }

  Widget buildListHeader(BuildContext context) {
    return ExerciseFilterController(
      exercise: filteredExercise,
      searchTerm: searchValue,
      onSearched: onSearch,
      onFilter: () => FitnickActions(context).goExerciseFilterScreen(),
      onExerciseChanged: onExerciseChanged,
    );
  }

  Widget buildEmptyExercise(BuildContext context) => NotFoundAction(
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
