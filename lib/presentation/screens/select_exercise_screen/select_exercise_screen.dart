import 'package:fitnick/application/exercise/filtered_exercise/filtered_exercise_bloc.dart';
import 'package:fitnick/application/workout/workout_form/workout_form_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/core/widgets/save_button.dart';
import 'package:fitnick/presentation/core/widgets/search_bar.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/exercise_item.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/exercise_item_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectExerciseScreen extends StatelessWidget {
  static const String routeName = "/select_exercise";
  static Widget generateRoute({@required WorkoutFormBloc bloc}) {
    return BlocProvider<WorkoutFormBloc>.value(
        value: bloc, child: SelectExerciseScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Select Exercise"),
        ),
        body: BlocBuilder<FilteredExerciseBloc, FilteredExerciseState>(
          builder: (context, state) {
            if (state.isLoading) {
              return buildLoading();
            }
            return state.exercises.fold(
                () => buildNoExercise(),
                (List<Exercise> exercises) =>
                    buildLoaded(context, exercises, state.searchTerm));
          },
        ));
  }

  Widget buildNoExercise() {
    return Center(child: Text("No Exercises Available"));
  }

  Widget buildLoaded(
      BuildContext context, List<Exercise> exercises, String searchTerm) {
    return Stack(
      children: <Widget>[
        buildExerciseList(context, exercises, searchTerm),
        buildDoneButton(context)
      ],
    );
  }

  Widget buildExerciseList(
      BuildContext context, List<Exercise> exercises, String searchTerm) {
    return BlocBuilder<WorkoutFormBloc, WorkoutFormState>(
      builder: (_, state) {
        return ListView.builder(
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: SearchBar(
                  value: searchTerm,
                  onChanged: (value) {
                    BlocProvider.of<FilteredExerciseBloc>(context)
                        .add(FilteredExerciseEvent.searched(term: value));
                  },
                ),
              );
            }
            final realIndex = index - 1;
            final exercise = exercises[realIndex];
            final bool isSelected = state.workout.exercises
                .any((wExercise) => wExercise.id == exercise.id);
            return Container(
              margin: EdgeInsets.all(10),
              child: ExerciseItem(
                exercise: exercise,
                exerciseItemType: ExerciseItemType.selectable(
                    onSelect: (_) {
                      BlocProvider.of<WorkoutFormBloc>(context).add(isSelected
                          ? WorkoutFormEvent.exerciseRemoved(
                              exerciseId: exercise.id)
                          : WorkoutFormEvent.exerciseAdded(exercise: exercise));
                    },
                    selected: isSelected),
              ),
            );
          },
          itemCount: exercises.length + 1,
        );
      },
    );
  }

  Align buildDoneButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.all(20),
        child: SaveButton(
          title: "Done",
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  Widget buildLoading() {
    return Center(child: CircularProgressIndicator());
  }

  Widget buildLoadedError(_) {
    return Text("Exercise Loaded Error , Try again ");
  }
}
