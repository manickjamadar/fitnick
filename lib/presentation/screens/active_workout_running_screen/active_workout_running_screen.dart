import 'package:fitnick/application/active_workout/active_workout_hub/active_workout_hub_cubit.dart';
import 'package:fitnick/application/active_workout/active_workout_runner/active_workout_runner_cubit.dart';
import 'package:fitnick/application/core/helpers/time_formatter.dart';
import 'package:fitnick/application/music/music_hub/music_hub_cubit.dart';
import 'package:fitnick/domain/account/models/sub_models/coin.dart';
import 'package:fitnick/domain/active_exercise/facade/i_active_exercise_facade.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/domain/active_exercise/models/sub_models/exercise_perform_type.dart';
import 'package:fitnick/domain/active_exercise/models/sub_models/exercise_set.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/fitnick_icons.dart';
import 'package:fitnick/presentation/core/widgets/action_button.dart';
import 'package:fitnick/presentation/core/widgets/confirm_dialog.dart';
import 'package:fitnick/presentation/core/widgets/exercise_title.dart';
import 'package:fitnick/presentation/core/widgets/raw_input_dialog.dart';
import 'package:fitnick/presentation/screens/active_workout_running_screen/widgets/backdrop.dart';
import 'package:fitnick/presentation/screens/active_workout_running_screen/widgets/progress_bar.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/video_preview.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/level_flash.dart';
import 'package:fitnick/presentation/screens/music_center_screen/music_center_screen.dart';
import 'package:fitnick/service_locator.dart';
import 'package:fitnick/shared/fitnick_image_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:wakelock/wakelock.dart';
import "../../core/helpers/string_extension.dart";

class ActiveWorkoutRunningScreen extends StatefulWidget {
  @override
  _ActiveWorkoutRunningScreenState createState() =>
      _ActiveWorkoutRunningScreenState();

  static const String routeName = "/active-workout-running";
  static Widget generateRoute(
      {@required BuildContext context,
      @required ActiveWorkout activeWorkout,
      @required MusicHubCubit musicHubCubit}) {
    return BlocProvider(
      create: (_) => ActiveWorkoutRunnerCubit(
          musicHubCubit: musicHubCubit,
          activeWorkoutHubCubit:
              BlocProvider.of<ActiveWorkoutHubCubit>(context),
          activeExerciseFacade: locator<IActiveExerciseFacade>())
        ..init(activeWorkout),
      child: ActiveWorkoutRunningScreen(),
    );
  }
}

class _ActiveWorkoutRunningScreenState
    extends State<ActiveWorkoutRunningScreen> {
  PageController _pageController;
  double _barProgress;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ActiveWorkoutRunnerCubit, ActiveWorkoutRunnerState>(
      listener: (_, state) {
        if (state.isCompleted) {
          showDialog(
              context: context,
              builder: (_) => ConfirmDialog(
                    title: "Congratulations",
                    coin: Coin(500),
                    image: Image.asset(FitnickImageProvider.credit_success),
                    statement: "Credited Into Account",
                    actions: ActionButton(
                      label: "Completed Workout",
                      onPressed: () => Navigator.pop(context),
                    ),
                  )).then((_) => _onWorkoutComplete(context));
        } else if (state.isLoggingReps) {
          state.activeWorkoutOption.fold(() => null, (activeWorkout) {
            final activeExercise =
                activeWorkout.activeExercises[state.currentActiveExerciseIndex];
            final exerciseSet = activeExercise.sets[state.currentSetIndex];
            showDialog<String>(
                context: context,
                builder: (_) {
                  return RawInputDialog(
                    title: "Log Reps",
                    initialValue: exerciseSet.performCount.toString(),
                  );
                }).then((String value) {
              if (value == null || int.tryParse(value) == null) {
                _onLogRepsCancel(context);
              } else {
                _onLogReps(context, int.parse(value));
              }
            });
          });
        } else {
          _pageController.animateToPage(state.currentActiveExerciseIndex,
              duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
        }
      },
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
    return Stack(
      children: [
        buildMainRunner(activeWorkout, context, state),
        if (state.isResting) buildRestRunner(context, state)
      ],
    );
  }

  Widget buildRestRunner(BuildContext context, ActiveWorkoutRunnerState state) {
    return BackDrop(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Rest", style: TextStyle(color: Colors.white, fontSize: 24)),
          Text(formatTime(state.currentRest),
              style: TextStyle(color: Colors.white, fontSize: 22)),
          ActionChip(label: Text("Skip"), onPressed: () => onSkipRest(context))
        ],
      ),
    );
  }

  Scaffold buildMainRunner(ActiveWorkout activeWorkout, BuildContext context,
      ActiveWorkoutRunnerState state) {
    return Scaffold(
      appBar: AppBar(
        title: Text(activeWorkout.name.safeValue.capitalize()),
        actions: [
          IconButton(
              onPressed: () => _onVoiceIconPressed(context),
              icon: Icon(
                  state.voiceEnabled
                      ? FitnickIcons.voice
                      : FitnickIcons.voice_off,
                  size: state.voiceEnabled ? 24 : 20,
                  color: Theme.of(context).primaryColor)),
          IconButton(
              icon: Icon(FitnickIcons.music, size: 20, color: Colors.red),
              onPressed: () => _onMusicIconPressed(context)),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          buildBar(activeWorkout, state),
          buildExercisePageView(state, context, activeWorkout),
          buildExerciseController(context, state, activeWorkout),
          SizedBox(
            height: 10,
          ),
          Text("Total Time Spent : ${formatTime(state.totalTimeSpent)}",
              style: TextStyle(fontSize: 12, color: Colors.grey)),
          SizedBox(
            height: 10,
          ),
        ],
      )),
    );
  }

  Widget buildExerciseController(BuildContext context,
      ActiveWorkoutRunnerState state, ActiveWorkout activeWorkout) {
    final ActiveExercise activeExercise =
        activeWorkout.activeExercises[state.currentActiveExerciseIndex];
    final exerciseSet = activeExercise.sets[state.currentSetIndex];
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(state.isPaused ? Icons.stop : Icons.pause),
              iconSize: 30,
              onPressed: () =>
                  state.isPaused ? onStop(context) : onPause(context),
            ),
            buildPerformController(state, exerciseSet),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              iconSize: 30,
              onPressed: () => onSkipExercise(context),
            ),
          ],
        ));
  }

  Widget buildPerformController(
      ActiveWorkoutRunnerState state, ExerciseSet exerciseSet) {
    final performTextStyle =
        TextStyle(fontWeight: FontWeight.bold, fontSize: 22);
    return Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity: state.isPaused ? 0.6 : 1,
          child: Container(
              child: Column(
            children: [
              exerciseSet.performType == ExercisePerformType.reps
                  ? Text(
                      "${exerciseSet.performCount}",
                      style: performTextStyle,
                    )
                  : Text(
                      "${state.currentPerformedCount}/${exerciseSet.performCount}",
                      style: performTextStyle),
              Text(
                "${exerciseSet.performType.name}",
                style: TextStyle(fontSize: 18),
              )
            ],
          )),
        ),
      ],
    );
  }

  Widget buildExercisePageView(ActiveWorkoutRunnerState state,
      BuildContext context, ActiveWorkout activeWorkout) {
    return Expanded(
      child: PageView.builder(
        controller: _pageController,
        onPageChanged: (pageIndex) {
          if (pageIndex > state.currentActiveExerciseIndex) {
            onSwipeRight(context);
          } else if (pageIndex < state.currentActiveExerciseIndex) {
            onSwipeLeft(context);
          }
        },
        itemCount: activeWorkout.activeExercises.length,
        itemBuilder: (_, index) {
          final activeExercise = activeWorkout.activeExercises[index];
          return buildActiveExerciseView(
              state, activeExercise, state.currentSetIndex);
        },
      ),
    );
  }

  Widget buildBar(ActiveWorkout activeWorkout, ActiveWorkoutRunnerState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ProgressBar(
        progress: _barProgress,
      ),
    );
  }

  Widget buildActiveExerciseView(ActiveWorkoutRunnerState state,
      ActiveExercise activeExercise, int currentSetIndex) {
    final exerciseSet = activeExercise.sets[
        currentSetIndex < activeExercise.sets.length ? currentSetIndex : 0];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                if (state.isPaused) {
                  onPlay(context);
                } else {
                  onPause(context);
                }
              },
              child: Stack(
                children: [
                  VideoPreview(path: activeExercise.exercise.videoPath),
                  if (state.isPaused)
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black.withOpacity(0.7),
                          child: Icon(Icons.play_arrow,
                              color: Colors.white, size: 30),
                        ),
                      ),
                    )
                ],
              ),
            ),
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
      ),
    );
  }

  void _onWorkoutComplete(BuildContext context) {
    Navigator.pop(context);
  }

  void _onVoiceIconPressed(BuildContext context) {
    BlocProvider.of<ActiveWorkoutRunnerCubit>(context).toggleVoice();
  }

  void _onMusicIconPressed(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => MusicCenterScreen.generateRoute(),
        ));
  }

  void onSkipExercise(
    BuildContext context,
  ) {
    BlocProvider.of<ActiveWorkoutRunnerCubit>(context).skipExercise();
  }

  void onSkipRest(
    BuildContext context,
  ) {
    BlocProvider.of<ActiveWorkoutRunnerCubit>(context).skipRest();
  }

  void slideRight() {
    _pageController.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  void onPlay(BuildContext context) {
    BlocProvider.of<ActiveWorkoutRunnerCubit>(context).play();
  }

  void onPause(BuildContext context) {
    BlocProvider.of<ActiveWorkoutRunnerCubit>(context).pause();
  }

  void onStop(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => ConfirmDialog(
          title: "Quit Workout ?",
          image: Image.asset(FitnickImageProvider.quit_workout),
          actions: Column(
            children: [
              Container(
                width: double.infinity,
                child: ActionButton(
                  color: Colors.green,
                  label: "Continue Workout",
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: ActionButton(
                  color: Colors.red,
                  label: "Finish and Exit",
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          )),
    );
  }

  void onSwipeRight(BuildContext context) {
    BlocProvider.of<ActiveWorkoutRunnerCubit>(context).goFront();
  }

  void onSwipeLeft(BuildContext context) {
    BlocProvider.of<ActiveWorkoutRunnerCubit>(context).goBack();
  }

  void _onLogReps(BuildContext context, int reps) {
    BlocProvider.of<ActiveWorkoutRunnerCubit>(context).logReps(reps);
  }

  void _onLogRepsCancel(BuildContext context) {
    BlocProvider.of<ActiveWorkoutRunnerCubit>(context).skipLogReps();
  }

  void _onPageScroll() {
    BlocProvider.of<ActiveWorkoutRunnerCubit>(context)
        .state
        .activeWorkoutOption
        .fold(() {}, (activeWorkout) {
      final double lastExerciseIndex =
          (activeWorkout.activeExercises.length - 1).toDouble();
      final double currentPage = _pageController.page;
      setState(() {
        _barProgress = currentPage / lastExerciseIndex;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _barProgress = 0;
    _pageController = PageController(initialPage: 0);
    _pageController.addListener(_onPageScroll);
    Wakelock.enable();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    Wakelock.disable();
    super.dispose();
  }
}
