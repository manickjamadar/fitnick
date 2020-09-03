import 'package:fitnick/application/exercise/filtered_exercise/filtered_exercise_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_level.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_target.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_tool.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_type.dart';
import 'package:fitnick/presentation/core/widgets/action_button.dart';
import 'package:fitnick/presentation/core/widgets/option_editor.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExerciseFilterScreen extends StatelessWidget {
  static const routeName = "/exercise_filter";
  static Widget generateRoute(FilteredExerciseBloc bloc) {
    return BlocProvider.value(
      value: bloc,
      child: ExerciseFilterScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilteredExerciseBloc, FilteredExerciseState>(
      builder: (_, state) => Scaffold(
        appBar: AppBar(
          title: Text("Filter Exercise"),
          actions: [
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () => _onApplyFilter(context),
            )
          ],
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    OptionEditor<ExerciseLevel>(
                      title: "Levels",
                      allOptions: ExerciseLevel.all,
                      optionLabel: (option) => option.name,
                      initialOptions: state.filteredExercise.levels,
                      onOptionsChanged: (newLevels) => _onFilterExerciseChanged(
                          context,
                          state.filteredExercise.copyWith(levels: newLevels)),
                    ),
                    OptionEditor<ExerciseType>(
                      title: "Types",
                      allOptions: ExerciseType.all,
                      optionLabel: (option) => option.name,
                      initialOptions: state.filteredExercise.types,
                      onOptionsChanged: (newTypes) => _onFilterExerciseChanged(
                          context,
                          state.filteredExercise.copyWith(types: newTypes)),
                    ),
                    OptionEditor<ExerciseTool>(
                      title: "Tools",
                      allOptions: ExerciseTool.all,
                      optionLabel: (option) => option.name,
                      initialOptions: state.filteredExercise.tools,
                      onOptionsChanged: (newTools) => _onFilterExerciseChanged(
                          context,
                          state.filteredExercise.copyWith(tools: newTools)),
                    ),
                    OptionEditor<ExerciseTarget>(
                      title: "Primary Muscles",
                      allOptions: ExerciseTarget.all,
                      optionLabel: (option) => option.name,
                      initialOptions: state.filteredExercise.primaryTargets,
                      onOptionsChanged: (newTargets) =>
                          _onFilterExerciseChanged(
                              context,
                              state.filteredExercise
                                  .copyWith(primaryTargets: newTargets)),
                    ),
                    OptionEditor<ExerciseTarget>(
                      title: "Secondary Muscles",
                      allOptions: ExerciseTarget.all,
                      optionLabel: (option) => option.name,
                      initialOptions: state.filteredExercise.secondaryTargets,
                      onOptionsChanged: (newTargets) =>
                          _onFilterExerciseChanged(
                              context,
                              state.filteredExercise
                                  .copyWith(secondaryTargets: newTargets)),
                    ),
                    buildSpace(),
                    buildSpace(),
                    buildSpace(),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: buildActionButtons(context))
          ],
        ),
      ),
    );
  }

  Widget buildActionButtons(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: ActionButton(
              color: Colors.grey,
              onPressed: () => _onResetFilter(context),
              label: "Reset",
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: ActionButton(
              onPressed: () => _onApplyFilter(context),
              label: "Apply",
            ),
          ),
        ],
      ),
    );
  }

  void _onFilterExerciseChanged(BuildContext context, Exercise exercise) {
    BlocProvider.of<FilteredExerciseBloc>(context)
        .add(FilteredExerciseEvent.filtered(exercise));
  }

  void _onApplyFilter(BuildContext context) {
    Navigator.pop(context);
  }

  void _onResetFilter(BuildContext context) {
    BlocProvider.of<FilteredExerciseBloc>(context)
        .add(FilteredExerciseEvent.resetFiltered());
  }

  Widget buildSpace() {
    return SizedBox(
      height: 20,
    );
  }
}
