import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/core/widgets/save_button.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/exercise_item.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/exercise_item_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectExerciseScreen extends StatelessWidget {
  static const String routeName = "/select_exercise";
  static Widget generateRoute() {
    return SelectExerciseScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Select Exercise"),
        ),
        body: BlocBuilder<ExerciseHubBloc, ExerciseHubState>(
          builder: (context, state) {
            return state.when(
                loading: buildLoading,
                loaded: (exercises) => buildLoaded(context, exercises),
                loadedError: buildLoadedError);
          },
        ));
  }

  Widget buildLoaded(BuildContext context, List<Exercise> exercises) {
    return Stack(
      children: <Widget>[
        buildExerciseList(exercises),
        buildDoneButton(context)
      ],
    );
  }

  ListView buildExerciseList(List<Exercise> exercises) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final exercise = exercises[index];
        return ExerciseItem(
          exercise: exercise,
          exerciseItemType: ExerciseItemType.selectable(onSelect: (_) {}),
        );
      },
      itemCount: exercises.length,
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
