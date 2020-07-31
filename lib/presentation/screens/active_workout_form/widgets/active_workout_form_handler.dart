import 'package:fitnick/application/active_workout/active_workout_form/active_workout_form_cubit.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/domain/core/value/value_failure.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/core/widgets/executing_indicator.dart';
import 'package:fitnick/presentation/screens/active_workout_form/widgets/active_exercise_edit_item.dart';
import 'package:fitnick/presentation/screens/select_exercise_screen/select_exercise_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "../../../../application/active_workout/active_workout_hub/active_workout_hub_cubit.dart";

class ActiveWorkoutFormHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ActiveWorkoutFormCubit, ActiveWorkoutFormState>(
      listener: (context, state) {
        state.addStatus.fold(() => null, (failureOrSuccess) {
          failureOrSuccess.fold(
              (failure) => showMessage(context,
                  message: getWorkoutFailureMessage(failure),
                  type: ErrorMessage()), (_) {
            onFormSuccess(context);
            Navigator.pop(
                context,
                state.isEditing
                    ? "${state.activeWorkout.name.safeValue} updated successfully"
                    : "${state.activeWorkout.name.safeValue} added successfully");
          });
        });
      },
      builder: (_, state) {
        return Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ReorderableListView(
                  header: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      buildNameInput(context),
                      buildAddExerciseButton(context)
                    ],
                  ),
                  onReorder: (oldIndex, newIndex) {},
                  children: state.activeWorkout.activeExercises
                      .map((ActiveExercise activeExercise) =>
                          ActiveExerciseEditItem(
                            key: ValueKey(activeExercise.id),
                            activeExercise: activeExercise,
                            onRemove: () => _onActiveExerciseRemove(
                                context, activeExercise),
                          ))
                      .toList()),
            ),
            if (state.isAdding) ExecutingIndicator(),
          ],
        );
      },
    );
  }

  FlatButton buildAddExerciseButton(BuildContext context) {
    return FlatButton(
      child: Text("+ Add Exercise"),
      onPressed: () async {
        final List<Exercise> selectedExercises = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => SelectExerciseScreen.generateRoute(context),
            ));
        if (selectedExercises == null || selectedExercises.isEmpty) {
          return;
        }
        selectedExercises.forEach((exercise) {
          onAddExercise(context, exercise);
        });
      },
    );
  }

  Widget buildNameInput(BuildContext context) {
    final activeWorkoutFormCubit =
        BlocProvider.of<ActiveWorkoutFormCubit>(context);
    final state = activeWorkoutFormCubit.state;
    final workoutName = state.activeWorkout.name.dangerValue;
    return TextFormField(
      key: ValueKey(state.isEditing),
      initialValue: workoutName,
      autofocus: !state.isEditing,
      onChanged: (value) {
        onNameChanged(context, value);
      },
      decoration: InputDecoration(
          errorText: _getErrorInputText(state),
          border: OutlineInputBorder(),
          labelText: "Workout Name"),
    );
  }

  void onNameChanged(BuildContext context, String name) {
    BlocProvider.of<ActiveWorkoutFormCubit>(context).nameChanged(name: name);
  }

  void onAddExercise(BuildContext context, Exercise exercise) {
    BlocProvider.of<ActiveWorkoutFormCubit>(context)
        .exerciseAdded(exercise: exercise);
  }

  void _onActiveExerciseRemove(
      BuildContext context, ActiveExercise activeExercise) {}

  String _getErrorInputText(ActiveWorkoutFormState state) {
    return state.shouldShowErrorMessages
        ? state.activeWorkout.name.value
            .fold((failure) => getValueFailureMessage(failure), (r) => null)
        : null;
  }

  void onFormSuccess(BuildContext context) {
    context.bloc<ActiveWorkoutHubCubit>().refreshed();
  }
}
