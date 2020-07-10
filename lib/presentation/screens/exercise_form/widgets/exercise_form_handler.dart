import 'package:fitnick/application/exercise/exercise_form/exercise_form_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise_level.dart';
import 'package:fitnick/domain/exercise/models/exercise_target.dart';
import 'package:fitnick/domain/exercise/models/exercise_tool.dart';
import 'package:fitnick/domain/exercise/models/exercise_type.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExerciseFormHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final exerciseformBloc = BlocProvider.of<ExerciseFormBloc>(context);
    return BlocBuilder<ExerciseFormBloc, ExerciseFormState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (state.isAdding) LinearProgressIndicator(),
              buildNameInput(context),
              buildSpace(),
              Selector<ExerciseLevel>(
                value: state.exercise.level,
                label: "Level",
                options: ExerciseLevel.all,
                onChanged: (newValue) {
                  exerciseformBloc
                      .add(ExerciseFormEvent.exerciseLevelChanged(newValue));
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
                  exerciseformBloc
                      .add(ExerciseFormEvent.exerciseTargetChanged(newValue));
                },
              ),
              Spacer(),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  child: Text("Add"),
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {
                    exerciseformBloc.add(ExerciseFormEvent.added());
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget buildNameInput(BuildContext context) {
    final exerciseFormBloc = BlocProvider.of<ExerciseFormBloc>(context);
    final state = exerciseFormBloc.state;
    return TextFormField(
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

  Widget buildSpace() {
    return SizedBox(
      height: 20,
    );
  }
}
