import 'package:fitnick/application/workout/workout_running/workout_running_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/video_preview.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/level_flash.dart';
import 'package:fitnick/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "../../core/helpers/string_extension.dart";

class WorkoutRunningScreen extends StatelessWidget {
  final Workout workout;

  const WorkoutRunningScreen({Key key, @required this.workout})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkoutRunningBloc, WorkoutRunningState>(
        listener: (_, state) {
      if (state.isCompleted) {
        Navigator.pop(context);
      }
    }, builder: (context, state) {
      return Stack(
        children: <Widget>[
          buildBody(state, context),
          if (state.isResting) buildRestPreview(state, context)
        ],
      );
    });
  }

  Scaffold buildBody(WorkoutRunningState state, BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(workout.name.safeValue.capitalize(),
              style: TextStyle(color: Colors.black)),
        ),
        body: state.currentIndex.fold(
            () => buildNoExercise(),
            (int index) =>
                buildExerciseRunner(context, _currentExercise(index), state)));
  }

  Scaffold buildRestPreview(WorkoutRunningState state, BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        color: Colors.black.withOpacity(0.8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Rest", style: TextStyle(color: Colors.white, fontSize: 40)),
            buildSpace(),
            Text("${_printRest(state.rest)}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                )),
            buildSpace(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.green,
                    child: Text("Again", style: TextStyle(color: Colors.white)),
                    onPressed: () => onPlayOrPause(context),
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.orange[800],
                    child: Text(state.hasNextExercise ? "Next" : "Complete",
                        style: TextStyle(color: Colors.white)),
                    onPressed: () => _onNextButtonTap(context, state),
                  ),
                ],
              ),
            )
          ],
        ),
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
          VideoPreview(path: exercise.videoPath),
          buildSpace(),
          Text(exercise.name.safeValue.capitalize(),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          buildSpace(),
          LevelFlash(level: exercise.levels.first, size: 22),
          Spacer(),
          buildController2(context, state)
        ],
      ),
    );
  }

  Widget buildSpace() {
    return SizedBox(
      height: 10,
    );
  }

  Widget buildController2(BuildContext context, WorkoutRunningState state) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: 160,
          height: 40,
          child: buildPlayButton(context, state),
        ),
        buildSpace(),
        Text(
          "Total Rest : ${_printRest(state.totalRest)}",
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 12,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold),
        ),
        buildSpace(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              child: Text("Previous", style: TextStyle(color: Colors.grey)),
              onPressed:
                  state.hasPreviousExercise ? () => _onPrevious(context) : null,
            ),
            FlatButton(
              child: Text(
                state.hasNextExercise ? "Next" : "Complete",
              ),
              onPressed: () => _onNextButtonTap(context, state),
            ),
          ],
        )
      ],
    );
  }

  RaisedButton buildPlayButton(
      BuildContext context, WorkoutRunningState state) {
    return RaisedButton(
      color: Colors.orange,
      textColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          (state.isResting) ? Icon(Icons.play_arrow) : Icon(Icons.pause),
          SizedBox(
            width: 8,
          ),
          state.isResting ? Text("Resting") : Text("Running")
        ],
      ),
      onPressed: () => onPlayOrPause(context),
    );
  }

  void _onNextButtonTap(BuildContext context, WorkoutRunningState state) {
    if (state.hasNextExercise) {
      _onNext(context);
    } else {
      _onStop(context);
    }
  }

  void _onStop(BuildContext context) {
    BlocProvider.of<WorkoutRunningBloc>(context)
        .add(WorkoutRunningEvent.complete());
  }

  void _onNext(BuildContext context) {
    BlocProvider.of<WorkoutRunningBloc>(context)
        .add(WorkoutRunningEvent.next());
  }

  void _onPrevious(BuildContext context) {
    BlocProvider.of<WorkoutRunningBloc>(context)
        .add(WorkoutRunningEvent.previous());
  }

  void onPlayOrPause(BuildContext context) {
    BlocProvider.of<WorkoutRunningBloc>(context)
        .add(WorkoutRunningEvent.restToogle());
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
