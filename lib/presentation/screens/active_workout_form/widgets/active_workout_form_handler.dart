import 'dart:io';

import 'package:fitnick/application/active_workout/active_workout_form/active_workout_form_cubit.dart';
import 'package:fitnick/application/core/helpers/time_formatter.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/domain/core/value/value_failure.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/fitnick_icons.dart';
import 'package:fitnick/presentation/core/helpers/get_image.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/core/widgets/action_button.dart';
import 'package:fitnick/presentation/core/widgets/executing_indicator.dart';
import 'package:fitnick/presentation/core/widgets/form_done_button.dart';
import 'package:fitnick/presentation/core/widgets/upload_button.dart';
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
                      SizedBox(
                        height: 20,
                      ),
                      buildThumbnailUploader(context, state.activeWorkout),
                      SizedBox(
                        height: 20,
                      ),
                      buildDurationViewer(
                          context, state.activeWorkout.totalDuration),
                      SizedBox(
                        height: 20,
                      ),
                      buildAddExerciseButton(
                          context, state.activeWorkout.activeExercises.length)
                    ],
                  ),
                  onReorder: (oldIndex, newIndex) =>
                      _onActiveExerciseReorder(context, oldIndex, newIndex),
                  children: state.activeWorkout.activeExercises
                      .map((ActiveExercise activeExercise) => Padding(
                            key: ValueKey(activeExercise.id),
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: ActiveExerciseEditItem(
                              activeExercise: activeExercise,
                              onRemove: () => _onActiveExerciseRemove(
                                  context, activeExercise),
                            ),
                          ))
                      .toList()),
            ),
            FormDoneButton(
              label: "${state.isEditing ? 'Update' : 'Save'} Workout",
              onDone: state.activeWorkout.isValid
                  ? () => _onWorkoutSave(context)
                  : null,
            ),
            if (state.isAdding) ExecutingIndicator(),
          ],
        );
      },
    );
  }

  Widget buildDurationViewer(BuildContext context, Duration duration) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text("Total Duration", style: FitnickTextTheme(context).title),
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 14),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    FitnickIcons.timer,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 6),
                  Text(formatTime(duration),
                      style: FitnickTextTheme(context)
                          .title
                          .copyWith(color: Colors.white)),
                ],
              )),
        ],
      ),
    );
  }

  Widget buildThumbnailUploader(
      BuildContext context, ActiveWorkout activeWorkout) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Thumbnail", style: FitnickTextTheme(context).heading2),
          SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(FitnickTheme.radius),
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: FitnickTheme.aspectRatio,
                  child: Container(
                    color: Colors.grey[200],
                    child: activeWorkout.imagePath.fold(
                        () => Center(
                              child: Text("No Thumbnail available"),
                            ),
                        (path) => Image.file(File(path), fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 10,
                    child: UploadButton(
                      onPressed: () => _onUploadButtonPressed(context),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildAddExerciseButton(BuildContext context, int totalExercises) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Exercises ($totalExercises)",
            style: FitnickTextTheme(context).heading2),
        FlatButton(
          child: Text("+ Add Exercise",
              style: FitnickTextTheme(context)
                  .button
                  .copyWith(color: Theme.of(context).primaryColorDark)),
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
        )
      ],
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
      style: FitnickTextTheme(context).body1,
      decoration: FitnickTheme.inputDecoration.copyWith(
          hintText: "Enter Workout Name", errorText: _getErrorInputText(state)),
    );
  }

  void onNameChanged(BuildContext context, String name) {
    BlocProvider.of<ActiveWorkoutFormCubit>(context).nameChanged(name: name);
  }

  void onAddExercise(BuildContext context, Exercise exercise) {
    BlocProvider.of<ActiveWorkoutFormCubit>(context)
        .exerciseAdded(exercise: exercise);
  }

  void _onWorkoutSave(BuildContext context) {
    BlocProvider.of<ActiveWorkoutFormCubit>(context).saved();
  }

  void _onUploadButtonPressed(BuildContext context) async {
    try {
      final imageFile = await pickNewImage();
      BlocProvider.of<ActiveWorkoutFormCubit>(context)
          .imagePathUpdated(path: imageFile.path);
    } catch (error) {
      print("picking image failed");
    }
  }

  void _onActiveExerciseRemove(
      BuildContext context, ActiveExercise activeExercise) {
    BlocProvider.of<ActiveWorkoutFormCubit>(context)
        .activeExerciseRemoved(activeExercise: activeExercise);
  }

  void _onActiveExerciseReorder(
      BuildContext context, int oldIndex, int newIndex) {
    BlocProvider.of<ActiveWorkoutFormCubit>(context)
        .activeExerciseReordered(oldIndex: oldIndex, newIndex: newIndex);
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
