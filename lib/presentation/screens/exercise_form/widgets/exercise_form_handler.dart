import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/domain/core/value/value_failure.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_level.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_target.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_tool.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_type.dart';
import 'package:fitnick/presentation/core/helpers/get_video.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/core/widgets/executing_indicator.dart';
import 'package:fitnick/presentation/core/widgets/upload_button.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/selector.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/video_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/exercise/exercise_form/exercise_form_bloc.dart';
import '../../../../domain/exercise/failure/exercise_failure.dart';

class ExerciseFormHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExerciseFormBloc, ExerciseFormState>(
      listener: (context, state) {
        state.addStatus.fold(() => null, (failureOrSuccess) {
          failureOrSuccess.fold(
              (failure) => showMessage(context,
                  message: getExerciseFailureMessage(failure),
                  type: ErrorMessage()), (_) {
            onFormSuccess(context);
            Navigator.pop(
                context,
                state.isEditing
                    ? "${state.exercise.name.safeValue} updated successfully"
                    : "${state.exercise.name.safeValue} added successfully");
          });
        });
      },
      builder: (context, state) {
        return Container(
          // height: 400,
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildNameInput(context),
                      buildSpace(),
                      Text(
                        "Video",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      buildSpace(),
                      buildVideoUploader(context, state),
                      buildSpace(),
                      buildOptions(context, state),
                    ],
                  ),
                ),
              ),
              if (state.isAdding) buildLoading()
            ],
          ),
        );
      },
    );
  }

  Widget buildVideoUploader(BuildContext context, ExerciseFormState state) {
    return Stack(
      children: [
        VideoPreview(path: state.exercise.videoPath),
        Positioned(
          top: 10,
          right: 10,
          child: UploadButton(
            onPressed: () => _onVideoUpload(context),
          ),
        )
      ],
    );
  }

  Widget buildOptions(BuildContext context, ExerciseFormState state) {
    final exercise = state.exercise;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Selector<ExerciseLevel>(
          key: ValueKey(state.isEditing.toString() + "level"),
          title: "Level",
          options: ExerciseLevel.all,
          optionLabel: (option) => option.name,
          initialValues: exercise.levels,
          onSelect: (options) => _onOptionSelected(
              context, ExerciseFormEvent.levelsChanged(options)),
        ),
        buildSpace(),
        Selector<ExerciseTool>(
          key: ValueKey(state.isEditing.toString() + "tool"),
          title: "Tool",
          options: ExerciseTool.all,
          optionLabel: (option) => option.name,
          initialValues: exercise.tools,
          selectMultiple: true,
          onSelect: (options) => _onOptionSelected(
              context, ExerciseFormEvent.toolsChanged(options)),
        ),
        buildSpace(),
        Selector<ExerciseType>(
          key: ValueKey(state.isEditing.toString() + "type"),
          title: "Type",
          options: ExerciseType.all,
          optionLabel: (option) => option.name,
          initialValues: exercise.types,
          selectMultiple: true,
          onSelect: (options) => _onOptionSelected(
              context, ExerciseFormEvent.typesChanged(options)),
        ),
        buildSpace(),
        Selector<ExerciseTarget>(
          key: ValueKey(state.isEditing.toString() + "primary"),
          title: "Primary Muscle",
          options: ExerciseTarget.all,
          optionLabel: (option) => option.name,
          initialValues: exercise.primaryTargets,
          selectMultiple: true,
          onSelect: (options) => _onOptionSelected(
              context, ExerciseFormEvent.primaryTargetsChanged(options)),
        ),
        buildSpace(),
        Selector<ExerciseTarget>(
          key: ValueKey(state.isEditing.toString() + "secondary"),
          title: "Secondary Muscle",
          options: ExerciseTarget.all,
          optionLabel: (option) => option.name,
          initialValues: exercise.secondaryTargets,
          selectMultiple: true,
          onSelect: (options) => _onOptionSelected(
              context, ExerciseFormEvent.secondaryTargetsChanged(options)),
        ),
        buildSpace(),
        buildSpace(),
        buildSpace(),
      ],
    );
  }

  void _onOptionSelected(BuildContext context, ExerciseFormEvent event) {
    BlocProvider.of<ExerciseFormBloc>(context).add(event);
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
        exerciseFormBloc.add(ExerciseFormEvent.nameChanged(value));
      },
      style: FitnickTextTheme(context).body1,
      decoration: FitnickTheme.inputDecoration.copyWith(
          errorText: state.shouldShowErrorMessages
              ? state.exercise.name.value.fold(
                  (nameFailure) => getValueFailureMessage(nameFailure),
                  (r) => null)
              : null,
          hintText: "Enter Exercise Name"),
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
    return ExecutingIndicator();
  }

  Widget buildSpace() {
    return SizedBox(
      height: 20,
    );
  }

  void _onVideoUpload(BuildContext context) async {
    try {
      final videoFile = await pickNewVideo();
      BlocProvider.of<ExerciseFormBloc>(context)
          .add(ExerciseFormEvent.videoPathChanged(videoFile.path));
    } catch (error) {
      print("picking image failed");
    }
  }
}
