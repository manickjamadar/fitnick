import 'package:fitnick/application/exercise/exercise_actor/exercise_actor_bloc.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/exercise/exercise_form/exercise_form_bloc.dart';
import '../../../../domain/exercise/failure/exercise_failure.dart';
import '../../../../domain/exercise/models/exercise.dart';
import '../../../../domain/exercise/models/sub_models/exercise_level.dart';
import '../../../../domain/exercise/models/sub_models/exercise_target.dart';
import '../../../../domain/exercise/models/sub_models/exercise_tool.dart';
import '../../../../domain/exercise/models/sub_models/exercise_type.dart';
import 'selector.dart';

class ExerciseFormHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final exerciseformBloc = BlocProvider.of<ExerciseFormBloc>(context);
    return BlocConsumer<ExerciseFormBloc, ExerciseFormState>(
      listener: (context, state) {
        state.addStatus.fold(() => null, (failureOrSuccess) {
          failureOrSuccess.fold(
              (failure) => showMessage(context,
                  message: getExerciseFailureMessage(failure),
                  type: ErrorMessage()), (_) {
            onFormSuccess(context);
            Navigator.pop(context, [
              state.isEditing
                  ? "${state.exercise.name.safeValue} updated successfully"
                  : "${state.exercise.name.safeValue} added successfully"
            ]);
          });
        });
      },
      builder: (context, state) {
        return Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildNameInput(context),
                  buildSpace(),
                  Selector<ExerciseLevel>(
                    value: state.exercise.level,
                    label: "Level",
                    options: ExerciseLevel.all,
                    onChanged: (newValue) {
                      exerciseformBloc.add(
                          ExerciseFormEvent.exerciseLevelChanged(newValue));
                    },
                  ),
                  Selector<ExerciseTool>(
                    value: state.exercise.tool,
                    label: "Tool",
                    options: ExerciseTool.all,
                    onChanged: (newValue) {
                      exerciseformBloc
                          .add(ExerciseFormEvent.exerciseToolChanged(newValue));
                    },
                  ),
                  Selector<ExerciseType>(
                    value: state.exercise.type,
                    label: "Type",
                    options: ExerciseType.all,
                    onChanged: (newValue) {
                      exerciseformBloc
                          .add(ExerciseFormEvent.exerciseTypeChanged(newValue));
                    },
                  ),
                  Selector<ExerciseTarget>(
                    value: state.exercise.target,
                    label: "Muscle Target",
                    options: ExerciseTarget.all,
                    onChanged: (newValue) {
                      exerciseformBloc.add(
                          ExerciseFormEvent.exerciseTargetChanged(newValue));
                    },
                  ),
                  Spacer(),
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text("Add"),
                      color: Colors.black,
                      textColor: Colors.white,
                      onPressed: state.isAdding
                          ? null
                          : () {
                              exerciseformBloc.add(ExerciseFormEvent.added());
                            },
                    ),
                  )
                ],
              ),
            ),
            if (state.isAdding) buildLoading()
          ],
        );
      },
    );
  }

  Widget buildNameInput(BuildContext context) {
    final exerciseFormBloc = BlocProvider.of<ExerciseFormBloc>(context);
    final state = exerciseFormBloc.state;
    final exerciseName = state.exercise.name.dangerValue;
    return TextFormField(
      key: ValueKey(state.isEditing),
      initialValue: exerciseName,
      autofocus: !state.isEditing,
      onChanged: (value) {
        exerciseFormBloc.add(ExerciseFormEvent.exerciseNameChanged(value));
      },
      decoration: InputDecoration(
          errorText: state.shouldShowErrorMessages
              ? state.exercise.name.value
                  .fold((l) => "invalid value", (r) => null)
              : null,
          border: OutlineInputBorder(),
          labelText: "Exercise Name"),
    );
  }

  void onFormSuccess(BuildContext context) {
    final exerciseHubBloc = BlocProvider.of<ExerciseHubBloc>(context);
    exerciseHubBloc.add(ExerciseHubEvent.refreshed());
  }

  void showFailureMessage(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(message, style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.red,
    ));
  }

  Widget buildLoading() {
    return Container(
      color: Colors.black.withOpacity(0.3),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget buildSpace() {
    return SizedBox(
      height: 20,
    );
  }
}
