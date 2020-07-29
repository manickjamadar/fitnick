import 'package:fitnick/application/active_workout/active_workout_form/active_workout_form_cubit.dart';
import 'package:fitnick/domain/core/value/value_failure.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/core/widgets/executing_indicator.dart';
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
      builder: (context, state) {
        return Stack(
          children: <Widget>[
            buildNameInput(context),
            if (state.isAdding) ExecutingIndicator(),
          ],
        );
        // return Stack(
        //   children: <Widget>[
        //     Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
        //       child: ReorderableListView(
        //           header: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: <Widget>[
        //               SizedBox(
        //                 height: 20,
        //               ),
        //               buildNameInput(context),
        //               buildAddExerciseButton(context)
        //             ],
        //           ),
        //           onReorder: (oldIndex, newIndex) {
        //             BlocProvider.of<WorkoutFormBloc>(context).add(
        //                 WorkoutFormEvent.exerciseReordered(
        //                     oldIndex: oldIndex, newIndex: newIndex));
        //           },
        //           children: state.workout.exercises
        //               .map((exercise) => ExerciseItem(
        //                     key: ValueKey(exercise.id.value),
        //                     exercise: exercise,
        //                     exerciseItemType:
        //                         ExerciseItemType.removable(onRemove: (_) {
        //                       BlocProvider.of<WorkoutFormBloc>(context).add(
        //                           WorkoutFormEvent.exerciseRemoved(
        //                               exerciseId: exercise.id));
        //                     }),
        //                   ))
        //               .toList()),
        //     ),
        //     if (state.isAdding) ExecutingIndicator(),
        //   ],
        // );
      },
    );
  }

  // FlatButton buildAddExerciseButton(BuildContext context) {
  //   return FlatButton(
  //     child: Text("+ Add Exercise"),
  //     onPressed: () {
  //       final route = BlocProvider<FilteredExerciseBloc>(
  //         create: (_) => FilteredExerciseBloc(
  //             exerciseHubBloc: BlocProvider.of<ExerciseHubBloc>(context)),
  //         child: SelectExerciseScreen.generateRoute(
  //             bloc: BlocProvider.of<WorkoutFormBloc>(context)),
  //       );
  //       Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //             builder: (_) => route,
  //           ));
  //     },
  //   );
  // }

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
