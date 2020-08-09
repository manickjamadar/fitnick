import 'package:fitnick/application/active_workout/active_workout_runner/active_workout_runner_cubit.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/presentation/core/widgets/exercise_title.dart';
import 'package:fitnick/presentation/screens/active_workout_running_screen/widgets/exercise_running_bar.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/video_preview.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/level_flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../service_locator.dart';
import "../../core/helpers/string_extension.dart";
import "../../../application/core/helpers/list_extension.dart";

class ActiveWorkoutRunningScreen extends StatefulWidget {
  @override
  _ActiveWorkoutRunningScreenState createState() =>
      _ActiveWorkoutRunningScreenState();

  static const String routeName = "/active-workout-running";
  static Widget generateRoute({@required ActiveWorkout activeWorkout}) {
    return BlocProvider(
      create: (_) => locator<ActiveWorkoutRunnerCubit>()..init(activeWorkout),
      child: ActiveWorkoutRunningScreen(),
    );
  }
}

class _ActiveWorkoutRunningScreenState
    extends State<ActiveWorkoutRunningScreen> {
  PageController _pageController;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActiveWorkoutRunnerCubit, ActiveWorkoutRunnerState>(
      builder: (_, state) {
        return state.activeWorkoutOption
            .fold(() => buildLoading(), (a) => buildRunner(context, state, a));
      },
    );
  }

  Widget buildLoading() {
    return Scaffold(
        body: Center(
      child: CircularProgressIndicator(),
    ));
  }

  Widget buildRunner(BuildContext context, ActiveWorkoutRunnerState state,
      ActiveWorkout activeWorkout) {
    return Scaffold(
      appBar: AppBar(
        title: Text(activeWorkout.name.safeValue.capitalize()),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        textTheme: Theme.of(context).textTheme,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExerciseRunningBar(
              totalExercise: activeWorkout.activeExercises.length,
              currentExerciseIndex: state.currentActiveExerciseIndex,
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (pageIndex) {
                if (pageIndex > state.currentActiveExerciseIndex) {
                  onSwipeRight(context);
                } else {
                  onSwipeLeft(context);
                }
              },
              itemCount: activeWorkout.activeExercises.length,
              itemBuilder: (_, index) {
                final activeExercise = activeWorkout.activeExercises[index];
                return buildActiveExerciseView(
                    activeExercise, state.currentSetIndex);
              },
            ),
          ),
          RaisedButton(
            child: Text("Next"),
            onPressed: () => goNext(context, activeWorkout, state),
          )
        ],
      ),
    );
  }

  Widget buildActiveExerciseView(
      ActiveExercise activeExercise, int currentSetIndex) {
    final exerciseSet = activeExercise.sets[
        currentSetIndex < activeExercise.sets.length ? currentSetIndex : 0];
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          VideoPreview(path: activeExercise.exercise.videoPath),
          SizedBox(
            height: 20,
          ),
          ExerciseTitle(
            title: activeExercise.exercise.name.safeValue,
          ),
          SizedBox(
            height: 14,
          ),
          LevelFlash(
            level: activeExercise.exercise.levels.first,
            size: 22,
          ),
          Chip(
            label: Text(
                "${currentSetIndex + 1}/${activeExercise.sets.length} sets"),
          ),
          Chip(
            label: Text(
                "${exerciseSet.weightCount} ${exerciseSet.weightUnit.name}"),
          )
        ],
      ),
    );
  }

  void goNext(BuildContext context, ActiveWorkout activeWorkout,
      ActiveWorkoutRunnerState state) {
    final cubit = BlocProvider.of<ActiveWorkoutRunnerCubit>(context);
    final hasNextSet = activeWorkout
        .activeExercises[state.currentActiveExerciseIndex].sets
        .hasNext(state.currentSetIndex);
    if (hasNextSet) {
      cubit.goNextSet();
    } else {
      final hasNextExercise = activeWorkout.activeExercises
          .hasNext(state.currentActiveExerciseIndex);
      if (hasNextExercise) {
        slideRight();
      }
    }
  }

  void slideRight() {
    _pageController.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  void onSwipeRight(BuildContext context) {
    BlocProvider.of<ActiveWorkoutRunnerCubit>(context).skipExercise();
  }

  void onSwipeLeft(BuildContext context) {
    BlocProvider.of<ActiveWorkoutRunnerCubit>(context).goBack();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
