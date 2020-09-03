import 'package:fitnick/application/account/account_manager/account_manager_cubit.dart';
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/domain/core/value/value_failure.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_level.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_target.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_tool.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_type.dart';
import 'package:fitnick/presentation/core/helpers/get_image.dart';
import 'package:fitnick/presentation/core/helpers/get_video.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/core/widgets/executing_indicator.dart';
import 'package:fitnick/presentation/core/widgets/exercise_thumbnail.dart';
import 'package:fitnick/presentation/core/widgets/form_done_button.dart';
import 'package:fitnick/presentation/core/widgets/option_editor.dart';
import 'package:fitnick/presentation/core/widgets/upload_button.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/exercise_level_selector.dart';
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
                      buildThumnailUploader(context, state),
                      buildSpace(),
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
                      buildSpace(),
                      buildSpace(),
                      buildSpace(),
                    ],
                  ),
                ),
              ),
              FormDoneButton(
                  label:
                      "${state.isEditing ? 'Update' : 'Save'} Exercise (${Exercise.price.value} coins)",
                  onDone: state.isAdding || !state.exercise.isValid
                      ? null
                      : () => _onSaveExercise(context)),
              if (state.isAdding) buildLoading()
            ],
          ),
        );
      },
    );
  }

  Widget buildThumnailUploader(BuildContext context, ExerciseFormState state) {
    return Align(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () => _onThumbnailUpload(context),
          child: ExerciseThumbnail(
            exercise: state.exercise,
          ),
        ));
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
        buildLevelSelector(context, exercise),
        OptionEditor<ExerciseType>(
          title: "Types",
          allOptions: ExerciseType.all,
          optionLabel: (option) => option.name,
          initialOptions: exercise.types,
          onOptionsChanged: (newTypes) => _onTypeChanged(context, newTypes),
        ),
        OptionEditor<ExerciseTool>(
          title: "Tools",
          allOptions: ExerciseTool.all,
          optionLabel: (option) => option.name,
          initialOptions: exercise.tools,
          onOptionsChanged: (newTools) => _onToolChanged(context, newTools),
        ),
        OptionEditor<ExerciseTarget>(
          title: "Primary Muscles",
          allOptions: ExerciseTarget.all,
          optionLabel: (option) => option.name,
          initialOptions: exercise.primaryTargets,
          onOptionsChanged: (newTargets) =>
              _onPrimaryTargetChanged(context, newTargets),
        ),
        OptionEditor<ExerciseTarget>(
          title: "Secondary Muscles",
          allOptions: ExerciseTarget.all,
          optionLabel: (option) => option.name,
          initialOptions: exercise.secondaryTargets,
          onOptionsChanged: (newTargets) =>
              _onSecondaryTargetChanged(context, newTargets),
        ),
      ],
    );
  }

  Widget buildLevelSelector(BuildContext context, Exercise exercise) {
    return ExerciseLevelSelector(
      level: exercise.levels.first,
      onChanged: (newLevel) => _onLevelChanged(context, newLevel),
    );
  }

  void _onSaveExercise(BuildContext context) {
    BlocProvider.of<AccountManagerCubit>(context).spend(Exercise.price);
  }

  void _onToolChanged(BuildContext context, List<ExerciseTool> tools) {
    BlocProvider.of<ExerciseFormBloc>(context)
        .add(ExerciseFormEvent.toolsChanged(tools));
  }

  void _onTypeChanged(BuildContext context, List<ExerciseType> types) {
    BlocProvider.of<ExerciseFormBloc>(context)
        .add(ExerciseFormEvent.typesChanged(types));
  }

  void _onPrimaryTargetChanged(
      BuildContext context, List<ExerciseTarget> targets) {
    BlocProvider.of<ExerciseFormBloc>(context)
        .add(ExerciseFormEvent.primaryTargetsChanged(targets));
  }

  void _onSecondaryTargetChanged(
      BuildContext context, List<ExerciseTarget> targets) {
    BlocProvider.of<ExerciseFormBloc>(context)
        .add(ExerciseFormEvent.secondaryTargetsChanged(targets));
  }

  void _onLevelChanged(BuildContext context, ExerciseLevel level) {
    BlocProvider.of<ExerciseFormBloc>(context)
        .add(ExerciseFormEvent.levelsChanged([level]));
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

  void _onThumbnailUpload(BuildContext context) async {
    try {
      final imageFile = await pickNewImage();
      BlocProvider.of<ExerciseFormBloc>(context)
          .add(ExerciseFormEvent.thumbnailPathChanged(imageFile.path));
    } catch (error) {
      print("exercise thumbnail upload failed");
    }
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
