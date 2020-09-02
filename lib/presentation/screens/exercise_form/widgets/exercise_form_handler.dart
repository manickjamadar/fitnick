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
import 'package:fitnick/presentation/core/widgets/upload_button.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/delete_chip.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/exercise_level_slider.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/selector.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/video_preview.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/level_flash.dart';
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
        buildLevelSelector(state, exercise, context),
        buildOptionSelector(context,
            title: "Tools",
            options: exercise.tools
                .map((tool) => DeleteChip(
                      label: tool.name,
                      onDelete: () {},
                    ))
                .toList()),
        buildOptionSelector(context,
            title: "Type",
            options: exercise.types
                .map((type) => DeleteChip(
                      label: type.name,
                      onDelete: () {},
                    ))
                .toList()),
        buildOptionSelector(context,
            title: "Primary Muscles",
            options: exercise.primaryTargets
                .map((target) => DeleteChip(
                      label: target.name,
                      onDelete: () {},
                    ))
                .toList()),
        buildOptionSelector(context,
            title: "Secondary Muscles",
            options: exercise.secondaryTargets
                .map((target) => DeleteChip(
                      label: target.name,
                      onDelete: () {},
                    ))
                .toList()),
      ],
    );
  }

  Widget buildOptionSelector(BuildContext context,
      {@required String title, @required List<DeleteChip> options}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(title, style: FitnickTextTheme(context).title),
          FlatButton(
            child: Text("+ Add",
                style: FitnickTextTheme(context)
                    .smallButton
                    .copyWith(color: Colors.grey)),
            onPressed: () {},
          )
        ]),
        Wrap(
          spacing: 10,
          children: options,
        )
      ],
    );
  }

  Widget buildLevelSelector(
      ExerciseFormState state, Exercise exercise, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${exercise.levels.first.name} Level",
            style: FitnickTextTheme(context).title),
        SizedBox(height: 6),
        LevelFlash(
          level: exercise.levels.first,
        ),
        ExerciseLevelSlider(
          currentLevel: exercise.levels.first,
          onChanged: (value) {
            final newLevelIndex = value.floor();
            onLevelChanged(context, newLevelIndex);
          },
        )
      ],
    );
  }

  void _onOptionSelected(BuildContext context, ExerciseFormEvent event) {
    BlocProvider.of<ExerciseFormBloc>(context).add(event);
  }

  void onLevelChanged(BuildContext context, int levelIndex) {
    BlocProvider.of<ExerciseFormBloc>(context)
        .add(ExerciseFormEvent.levelsChanged([ExerciseLevel.all[levelIndex]]));
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
