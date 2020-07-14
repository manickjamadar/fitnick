import 'package:fitnick/application/workout/workout_running/workout_running_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/presentation/screens/workout_running_screen/widgets/exercise_runner_viewer.dart';
import 'package:fitnick/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkoutRunningScreen extends StatelessWidget {
  final Workout workout;

  const WorkoutRunningScreen({Key key, @required this.workout})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(workout.name.safeValue),
      ),
      body: BlocBuilder<WorkoutRunningBloc, WorkoutRunningState>(
        builder: (context, state) {
          return state.currentIndex.fold(
              () => buildNoExercise(),
              (int index) =>
                  buildExerciseRunner(context, _currentExercise(index), state));
        },
      ),
    );
  }

  Widget buildNoExercise() {
    return Center(
      child: Text("No Exercise Available"),
    );
  }

  Widget buildExerciseRunner(
      BuildContext context, Exercise exercise, WorkoutRunningState state) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Text("Total Rest: ${_printRest(state.totalRest)}"),
          SizedBox(
            height: 10,
          ),
          ExerciseRunnerViewer(
            exercise: exercise,
          ),
          Spacer(),
          if (state.isResting) Text("Rest : ${_printRest(state.rest)}"),
          buildRunnerController(context, state),
        ],
      ),
    );
  }

  Widget buildRunnerController(
      BuildContext context, WorkoutRunningState state) {
    return Container(
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 40,
              ),
              onPressed: state.hasPreviousExercise ? () {} : null,
              iconSize: 40),
          if (state.isResting)
            CircleAvatar(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.stop),
              ),
            ),
          IconButton(
              iconSize: 100,
              onPressed: () {},
              icon: Icon(
                  state.isResting
                      ? Icons.play_circle_filled
                      : Icons.pause_circle_filled,
                  size: 100)),
          IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 40,
              ),
              onPressed: state.hasNextExercise ? () {} : null,
              iconSize: 40),
        ],
      ),
    );
  }

  String _printRest(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitHours = twoDigits(duration.inHours) + " Hour";
    String twoDigitMinutes =
        twoDigits(duration.inMinutes.remainder(60)) + " Min";
    String twoDigitSeconds =
        twoDigits(duration.inSeconds.remainder(60)) + " Sec";
    if (duration.inMinutes == 0 && duration.inHours == 0) {
      return twoDigitSeconds;
    } else if (duration.inHours == 0) {
      return "$twoDigitMinutes $twoDigitSeconds";
    } else {
      return "$twoDigitHours $twoDigitMinutes $twoDigitSeconds";
    }
  }

  Exercise _currentExercise(int index) {
    if (index >= workout.exercises.length) {
      return null;
    }
    return workout.exercises[index];
  }

  static const String routeName = "/workout_running";
  static Widget generateRoute({@required Workout workout}) {
    return BlocProvider<WorkoutRunningBloc>(
        create: (_) => locator<WorkoutRunningBloc>()
          ..add(WorkoutRunningEvent.start(workout: workout)),
        child: WorkoutRunningScreen(workout: workout));
  }
}
