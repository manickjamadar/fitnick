import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/application/exercise/filtered_exercise/filtered_exercise_bloc.dart';
import 'package:fitnick/application/workout/workout_form/workout_form_bloc.dart';
import 'package:fitnick/application/workout/workout_hub/workout_hub_bloc.dart';
import 'package:fitnick/domain/core/value/value_failure.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/core/widgets/executing_indicator.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/exercise_item.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/exercise_item_type.dart';
import 'package:fitnick/presentation/screens/select_exercise_screen/select_exercise_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkoutFormHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkoutFormBloc, WorkoutFormState>(
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
                    ? "${state.workout.name.safeValue} updated successfully"
                    : "${state.workout.name.safeValue} added successfully");
          });
        });
      },
      builder: (context, state) {
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
                  onReorder: (oldIndex, newIndex) {
                    BlocProvider.of<WorkoutFormBloc>(context).add(
                        WorkoutFormEvent.exerciseReordered(
                            oldIndex: oldIndex, newIndex: newIndex));
                  },
                  children: state.workout.exercises
                      .map((exercise) => ExerciseItem(
                            key: ValueKey(exercise.id.value),
                            exercise: exercise,
                            exerciseItemType:
                                ExerciseItemType.removable(onRemove: (_) {
                              BlocProvider.of<WorkoutFormBloc>(context).add(
                                  WorkoutFormEvent.exerciseRemoved(
                                      exerciseId: exercise.id));
                            }),
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
      onPressed: () {
        final route = BlocProvider<FilteredExerciseBloc>(
          create: (_) => FilteredExerciseBloc(
              exerciseHubBloc: BlocProvider.of<ExerciseHubBloc>(context)),
          child: SelectExerciseScreen.generateRoute(
              bloc: BlocProvider.of<WorkoutFormBloc>(context)),
        );
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => route,
            ));
      },
    );
  }

  Widget buildNameInput(BuildContext context) {
    final workoutFormBloc = BlocProvider.of<WorkoutFormBloc>(context);
    final state = workoutFormBloc.state;
    final workoutName = state.workout.name.dangerValue;
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
    BlocProvider.of<WorkoutFormBloc>(context)
        .add(WorkoutFormEvent.nameChanged(name: name));
  }

  String _getErrorInputText(WorkoutFormState state) {
    return state.shouldShowErrorMessages
        ? state.workout.name.value
            .fold((failure) => getValueFailureMessage(failure), (r) => null)
        : null;
  }

  void onFormSuccess(BuildContext context) {
    context.bloc<WorkoutHubBloc>().add(WorkoutHubEvent.refreshed());
  }
}
