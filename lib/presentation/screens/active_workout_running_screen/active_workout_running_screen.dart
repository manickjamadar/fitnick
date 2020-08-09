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

class ActiveWorkoutRunningScreen extends StatelessWidget {
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
              controller: PageController(initialPage: 0),
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
                return buildActiveExerciseView(activeExercise);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildActiveExerciseView(ActiveExercise activeExercise) {
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
        ],
      ),
    );
  }

  void onSwipeRight(BuildContext context) {
    BlocProvider.of<ActiveWorkoutRunnerCubit>(context).skipExercise();
  }

  void onSwipeLeft(BuildContext context) {
    BlocProvider.of<ActiveWorkoutRunnerCubit>(context).goBack();
  }

  static const String routeName = "/active-workout-running";
  static Widget generateRoute({@required ActiveWorkout activeWorkout}) {
    return BlocProvider(
      create: (_) => locator<ActiveWorkoutRunnerCubit>()..init(activeWorkout),
      child: ActiveWorkoutRunningScreen(),
    );
  }
}
