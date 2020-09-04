import 'package:circle_wave_progress/circle_wave_progress.dart';
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
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/core/widgets/action_button.dart';
import 'package:fitnick/presentation/core/widgets/confirm_dialog.dart';
import 'package:fitnick/presentation/core/widgets/exercise_set_circle.dart';
import 'package:fitnick/presentation/core/widgets/exercise_title.dart';
import 'package:fitnick/presentation/core/widgets/raw_exercise_tile.dart';
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
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:wakelock/wakelock.dart';
import "../../core/helpers/string_extension.dart";
import "../../../application/core/helpers/list_extension.dart";

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
      buildWhen: (previous, current) {
        if (current.isLoggingReps == true && previous.isLoggingReps == false) {
          current.activeWorkoutOption.fold(() => null, (activeWorkout) {
            final activeExercise = activeWorkout
                .activeExercises[current.currentActiveExerciseIndex];
            final exerciseSet = activeExercise.sets[current.currentSetIndex];
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
        }
        return true;
      },
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
    final activeExercise =
        activeWorkout.activeExercises[state.currentActiveExerciseIndex];
    final exerciseSet = activeExercise.sets[state.currentSetIndex];
    return Stack(
      children: [
        buildMainRunner(activeWorkout, context, state),
        if (state.isResting)
          buildRestRunner(
              context, state.currentRest, Duration(seconds: exerciseSet.rest))
      ],
    );
  }

  Widget buildRestRunner(
      BuildContext context, Duration currentRest, Duration totalRest) {
    double waveProgress;
    if (totalRest.inSeconds <= 0) {
      waveProgress = 0;
    } else {
      waveProgress = currentRest.inSeconds / totalRest.inSeconds;
    }
    final circleRadius = MediaQuery.of(context).size.width / 3;
    final double circleWidth = 8;
    return BackDrop(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Rest",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Stack(
            alignment: Alignment.center,
            children: [
              CircularPercentIndicator(
                  lineWidth: circleWidth,
                  progressColor: Theme.of(context).primaryColor,
                  percent: waveProgress,
                  circularStrokeCap: CircularStrokeCap.round,
                  animation: true,
                  animationDuration: 1000,
                  animateFromLastPercent: true,
                  curve: Curves.linear,
                  backgroundColor: Colors.grey[700],
                  radius: circleRadius),
              Align(
                alignment: Alignment.center,
                child: FittedBox(
                  child: Text(formatTimeInNums(currentRest),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ActionButton(
            label: "Skip",
            color: Colors.blue,
            onPressed: () => onSkipRest(context),
          )
        ],
      ),
    );
  }

  Scaffold buildMainRunner(ActiveWorkout activeWorkout, BuildContext context,
      ActiveWorkoutRunnerState state) {
    return Scaffold(
      appBar: buildAppBar(activeWorkout, context, state),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            children: [
              buildBar(activeWorkout, state),
              buildExercisePageView(state, context, activeWorkout),
              // buildControllerFooter(context, state, activeWorkout)
            ],
          ),
          buildDraggableSheet(context, state, activeWorkout)
        ],
      )),
    );
  }

  AppBar buildAppBar(ActiveWorkout activeWorkout, BuildContext context,
      ActiveWorkoutRunnerState state) {
    return AppBar(
      backgroundColor: Colors.grey[100],
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
    );
  }

  Widget buildDraggableSheet(BuildContext context,
      ActiveWorkoutRunnerState state, ActiveWorkout activeWorkout) {
    final double sheetHeaderHeight = 174;
    final barPadding = MediaQuery.of(context).padding;
    final appBar = buildAppBar(activeWorkout, context, state);
    final double totalHeight = MediaQuery.of(context).size.height -
        barPadding.top -
        barPadding.bottom -
        appBar.preferredSize.height;
    final double sheetMinChildSize = sheetHeaderHeight / totalHeight;
    final double sheetRadius = 30;
    return DraggableScrollableSheet(
      initialChildSize: sheetMinChildSize,
      minChildSize: sheetMinChildSize,
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(sheetRadius),
              topRight: Radius.circular(sheetRadius)),
          child: Container(
            color: Colors.white,
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverStickyHeader(
                  header:
                      buildControllerSheetHeader(context, state, activeWorkout),
                  sliver: buildRemainingExerciseList(
                      state.currentActiveExerciseIndex,
                      activeWorkout.activeExercises),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  SliverList buildRemainingExerciseList(
      int currentExerciseIndex, List<ActiveExercise> activeExercises) {
    final currentActiveExercise = activeExercises[currentExerciseIndex];
    return SliverList(
        delegate: SliverChildListDelegate(activeExercises.map((active) {
      final isActive = active.id == currentActiveExercise.id;
      final color = isActive ? Colors.green : Colors.white;
      return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          border: Border.all(color: color),
        ),
        child: RawExerciseTile(
          exercise: active.exercise,
          trailing: ExerciseSetCircle(
            totalSets: active.sets.length,
          ),
        ),
      );
    }).toList()));
  }

  Widget buildControllerSheetHeader(BuildContext context,
      ActiveWorkoutRunnerState state, ActiveWorkout activeWorkout) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildDragHandle(),
          SizedBox(height: 10),
          buildControllerFooter(context, state, activeWorkout),
          SizedBox(height: 10),
          Divider(),
        ],
      ),
    );
  }

  // Widget buildNextExerciseSheetTile(ActiveWorkoutRunnerState state,ActiveWorkout activeWorkout){
  //   final hasNextExercise =
  //       activeWorkout.activeExercises.hasNext(state.currentActiveExerciseIndex);
  //   final nextActiveExercise = activeWorkout.activeExercises[hasNextExercise
  //       ? state.currentActiveExerciseIndex + 1
  //       : state.currentActiveExerciseIndex];
  //   return Column(children: [
  //     Container(
  //           alignment: Alignment.centerLeft,
  //           child: Text("Next Up", style: FitnickTextTheme(context).title),
  //         ),
  //         SizedBox(
  //           height: 10,
  //         ),
  //         Stack(
  //           alignment: Alignment.center,
  //           children: [
  //             AnimatedOpacity(
  //               duration: Duration(milliseconds: 200),
  //               opacity: hasNextExercise ? 1 : 0.1,
  //               child: RawExerciseTile(
  //                 exercise: nextActiveExercise.exercise,
  //                 trailing: ExerciseSetCircle(
  //                   totalSets: nextActiveExercise.sets.length,
  //                 ),
  //               ),
  //             ),
  //             if (!hasNextExercise)
  //               Text("No Next Exercise",
  //                   style: FitnickTextTheme(context)
  //                       .title
  //                       .copyWith(color: Colors.grey[700]))
  //           ],
  //         ),
  //   ],);
  // }

  Container buildDragHandle() {
    return Container(
        width: 60,
        height: 4,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ));
  }

  Widget buildControllerFooter(BuildContext context,
      ActiveWorkoutRunnerState state, ActiveWorkout activeWorkout) {
    return Column(
      children: [
        buildExerciseController(context, state, activeWorkout),
        SizedBox(
          height: 10,
        ),
        Text("Total Time Spent : ${formatTime(state.totalTimeSpent)}",
            style: TextStyle(
                fontSize: 11, color: Colors.grey, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget buildExerciseController(BuildContext context,
      ActiveWorkoutRunnerState state, ActiveWorkout activeWorkout) {
    final ActiveExercise activeExercise =
        activeWorkout.activeExercises[state.currentActiveExerciseIndex];
    final exerciseSet = activeExercise.sets[state.currentSetIndex];
    final double iconSize = 26;
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(state.isPaused ? Icons.stop : Icons.pause),
          iconSize: iconSize,
          color: state.isPaused ? Colors.red : Colors.blue,
          onPressed: () => state.isPaused ? onStop(context) : onPause(context),
        ),
        buildPerformController(state, exerciseSet),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          color: Colors.green,
          iconSize: iconSize,
          onPressed: () => onSkipExercise(context),
        ),
      ],
    ));
  }

  Widget buildPerformController(
      ActiveWorkoutRunnerState state, ExerciseSet exerciseSet) {
    final performTextStyle =
        TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
    final actualPerformCount =
        exerciseSet.performType == ExercisePerformType.reps
            ? exerciseSet.performCount
            : exerciseSet.performCount - state.currentPerformedCount + 1;
    final progress = actualPerformCount / exerciseSet.performCount;
    final double circleRadius = 100;
    final double lineWidth = 5;

    return Stack(
      alignment: Alignment.center,
      children: [
        CircularPercentIndicator(
          radius: circleRadius,
          lineWidth: lineWidth,
          backgroundColor: Colors.grey[300],
          progressColor: Theme.of(context).primaryColor,
          circularStrokeCap: CircularStrokeCap.round,
          percent: progress,
          animation: true,
          animateFromLastPercent: true,
          curve: Curves.linear,
          animationDuration: 1000,
        ),
        Opacity(
          opacity: state.isPaused ? 0.6 : 1,
          child: Container(
              width: circleRadius - (lineWidth * 2),
              child: Column(
                children: [
                  FittedBox(
                      child: Text(actualPerformCount.toString(),
                          style: performTextStyle)),
                  Text(
                    "${exerciseSet.performType.name}",
                    style: TextStyle(fontSize: 16),
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
              height: 10,
            ),
            ExerciseTitle(
              title: activeExercise.exercise.name.safeValue,
            ),
            SizedBox(
              height: 6,
            ),
            LevelFlash(
              level: activeExercise.exercise.levels.first,
              size: 18,
            ),
            SizedBox(
              height: 10,
            ),
            buildExtraInfo(context,
                weightInfo:
                    "${exerciseSet.weightCount} ${exerciseSet.weightUnit.name}",
                setInfo:
                    "${currentSetIndex + 1}/${activeExercise.sets.length}"),
          ],
        ),
      ),
    );
  }

  Widget buildExtraInfo(BuildContext context,
      {@required String weightInfo, @required String setInfo}) {
    final color = Theme.of(context).primaryColor;
    return Card(
        elevation: 10,
        shadowColor: Colors.black.withOpacity(0.3),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildInfoRow(color, FitnickIcons.weight, weightInfo, "Weight"),
              buildInfoRow(color, FitnickIcons.exerciseSet, setInfo, "Sets"),
            ],
          ),
        ));
  }

  Widget buildInfoRow(
      Color color, IconData iconData, String title, String subtitle) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.15),
            radius: 22,
            child: Icon(iconData, size: 18, color: color),
          ),
          SizedBox(
            width: 16,
          ),
          Flexible(
            child: Column(
              children: [
                Text(title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text(subtitle, style: TextStyle(fontSize: 12))
              ],
            ),
          )
        ],
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
