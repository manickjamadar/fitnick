import 'package:fitnick/application/workout/workout_form/workout_form_bloc.dart';
import 'package:fitnick/application/workout/workout_hub/workout_hub_bloc.dart';
import 'package:fitnick/domain/core/value/value_failure.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/core/widgets/executing_indicator.dart';
import 'package:fitnick/presentation/core/widgets/save_button.dart';
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
            SingleChildScrollView(child: buildForm(context)),
            buildSaveButton(context),
            if (state.isAdding) ExecutingIndicator()
          ],
        );
      },
    );
  }

  Padding buildForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildNameInput(context),
          SizedBox(
            height: 20,
          ),
          Text("Exercises", style: Theme.of(context).textTheme.subtitle1),
          buildWorkoutExeriseList(context),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            child: Text("+ Add Exercise"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SelectExerciseScreen.generateRoute(
                        bloc: BlocProvider.of<WorkoutFormBloc>(context)),
                  ));
            },
          )
        ],
      ),
    );
  }

  Widget buildWorkoutExeriseList(BuildContext context) {
    return BlocBuilder<WorkoutFormBloc, WorkoutFormState>(
      builder: (_, state) {
        return Column(
            children: state.workout.exercises
                .map((exercise) => ExerciseItem(
                      exercise: exercise,
                      exerciseItemType:
                          ExerciseItemType.removable(onRemove: (_) {
                        BlocProvider.of<WorkoutFormBloc>(context).add(
                            WorkoutFormEvent.exerciseRemoved(
                                exerciseId: exercise.id));
                      }),
                    ))
                .toList());
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

  Align buildSaveButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.all(20),
        child: SaveButton(
          onPressed: () => onWorkoutSave(context),
        ),
      ),
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

  void onWorkoutSave(BuildContext context) {
    BlocProvider.of<WorkoutFormBloc>(context).add(WorkoutFormEvent.saved());
  }

  void onFormSuccess(BuildContext context) {
    context.bloc<WorkoutHubBloc>().add(WorkoutHubEvent.refreshed());
  }
}
