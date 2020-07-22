import 'package:fitnick/application/exercise/filtered_exercise/filtered_exercise_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_level.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_target.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_tool.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_type.dart';
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
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Selector<ExerciseLevel>(
                  title: "Levels",
                  options: ExerciseLevel.all,
                  optionLabel: (option) => option.name,
                  initialValues: state.filteredExercise.levels,
                  selectMultiple: true,
                  onSelect: (selectedOptions) {
                    _onFilterExerciseChanged(
                        context,
                        state.filteredExercise
                            .copyWith(levels: selectedOptions));
                  },
                ),
                buildSpace(),
                Selector<ExerciseTool>(
                  title: "Tools",
                  options: ExerciseTool.all,
                  optionLabel: (option) => option.name,
                  initialValues: state.filteredExercise.tools,
                  selectMultiple: true,
                  onSelect: (selectedOptions) {
                    _onFilterExerciseChanged(
                        context,
                        state.filteredExercise
                            .copyWith(tools: selectedOptions));
                  },
                ),
                buildSpace(),
                Selector<ExerciseType>(
                  title: "Types",
                  options: ExerciseType.all,
                  optionLabel: (option) => option.name,
                  initialValues: state.filteredExercise.types,
                  selectMultiple: true,
                  onSelect: (selectedOptions) {
                    _onFilterExerciseChanged(
                        context,
                        state.filteredExercise
                            .copyWith(types: selectedOptions));
                  },
                ),
                buildSpace(),
                Selector<ExerciseTarget>(
                  title: "Primary Muscles",
                  options: ExerciseTarget.all,
                  optionLabel: (option) => option.name,
                  initialValues: state.filteredExercise.primaryTargets,
                  selectMultiple: true,
                  onSelect: (selectedOptions) {
                    _onFilterExerciseChanged(
                        context,
                        state.filteredExercise
                            .copyWith(primaryTargets: selectedOptions));
                  },
                ),
                buildSpace(),
                Selector<ExerciseTarget>(
                  title: "Secondary Muscles",
                  options: ExerciseTarget.all,
                  optionLabel: (option) => option.name,
                  initialValues: state.filteredExercise.secondaryTargets,
                  selectMultiple: true,
                  onSelect: (selectedOptions) {
                    _onFilterExerciseChanged(
                        context,
                        state.filteredExercise
                            .copyWith(secondaryTargets: selectedOptions));
                  },
                ),
                buildSpace(),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: Text("Apply Filter"),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                buildSpace(),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    child: Text("Reset Filter"),
                    onPressed: () => _onResetFilter(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onFilterExerciseChanged(BuildContext context, Exercise exercise) {
    BlocProvider.of<FilteredExerciseBloc>(context)
        .add(FilteredExerciseEvent.filtered(exercise));
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
