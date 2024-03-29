import 'dart:io';

import 'package:fitnick/application/core/helpers/time_formatter.dart';
import 'package:fitnick/application/music/music_hub/music_hub_cubit.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/fitnick_icons.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/core/widgets/exercise_set_circle.dart';
import "../../core/helpers/string_extension.dart";
import 'package:fitnick/presentation/core/widgets/label_circle.dart';
import 'package:fitnick/presentation/core/widgets/raw_exercise_tile.dart';
import 'package:fitnick/presentation/screens/active_workout_running_screen/active_workout_running_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActiveWorkoutPreviewScreen extends StatelessWidget {
  final ActiveWorkout activeWorkout;

  const ActiveWorkoutPreviewScreen({Key key, @required this.activeWorkout})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final padding = MediaQuery.of(context).padding;
    final actualHeight = screenHeight - padding.top - padding.bottom;
    final headerHeight = actualHeight * 0.34;
    final double buttonHeight = 56;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(100)),
                  child: buildHeader(context, headerHeight)),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child:
                    Text("Exercises (${activeWorkout.activeExercises.length})",
                        style: FitnickTextTheme(context).body1.copyWith(
                              fontSize: 16,
                            )),
              ),
              // SizedBox(
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: buildExerciseList(context),
              )),
            ],
          ),
          Positioned(
            right: (100 - buttonHeight).toDouble(),
            top: headerHeight - (buttonHeight / 2),
            child: FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(Icons.play_arrow, color: Colors.white),
              onPressed: activeWorkout.activeExercises.isEmpty
                  ? null
                  : () => _onStartWorkout(context),
            ),
          )
        ],
      ),
    );
  }

  Widget buildExerciseList(BuildContext context) {
    return activeWorkout.activeExercises.isEmpty
        ? buildNoExercise()
        : ListView.builder(
            itemBuilder: (_, index) {
              final activeExercise = activeWorkout.activeExercises[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: RawExerciseTile(
                  exercise: activeExercise.exercise,
                  trailing:
                      ExerciseSetCircle(totalSets: activeExercise.sets.length),
                ),
              );
            },
            itemCount: activeWorkout.activeExercises.length);
  }

  Widget buildHeader(BuildContext context, double headerHeight) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: headerHeight,
          color: Theme.of(context).primaryColor,
          child: activeWorkout.imagePath.fold(
              () => null,
              (path) => Hero(
                    tag: activeWorkout.id.value,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(100)),
                      child: Image.file(
                        File(path),
                        fit: BoxFit.cover,
                        color: Colors.black.withOpacity(0.6),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  )),
        ),
        Positioned(
          top: 28,
          child: IconButton(
            iconSize: 18,
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () => _onBack(context),
          ),
        ),
        Positioned.fill(child: buildInfo(context)),
      ],
    );
  }

  Widget buildInfo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Hero(
                tag: "label-circle-${activeWorkout.id.value}",
                child: LabelCircle(
                    radius: 120,
                    label: "${activeWorkout.activeExercises.length}"),
              ),
              SizedBox(
                width: 8,
              ),
              Text('Exercises',
                  style: FitnickTextTheme(context)
                      .title
                      .copyWith(color: Colors.white))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(activeWorkout.name.safeValue.capitalize(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: FitnickTextTheme(context)
                  .bigTitle
                  .copyWith(color: Colors.white)),
          SizedBox(
            height: 10,
          ),
          buildDuration(context, activeWorkout.totalDuration)
        ],
      ),
    );
  }

  Widget buildDuration(BuildContext context, Duration duration) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 14),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.6),
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              FitnickIcons.timer,
              color: Colors.white,
              size: 18,
            ),
            SizedBox(width: 6),
            Text(formatTime(duration),
                style: FitnickTextTheme(context)
                    .small
                    .copyWith(color: Colors.white)),
          ],
        ));
  }

  void _onBack(BuildContext context) {
    Navigator.pop(context);
  }

  void _onStartWorkout(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ActiveWorkoutRunningScreen.generateRoute(
              context: context,
              activeWorkout: activeWorkout,
              musicHubCubit: BlocProvider.of<MusicHubCubit>(context)),
        ));
  }

  Widget buildNoExercise() {
    return Center(
      child: Text("No Exercise available"),
    );
  }

  static const String routeName = "/active-workout-preview";
  static Widget generateRoute({@required ActiveWorkout activeWorkout}) {
    return ActiveWorkoutPreviewScreen(
      activeWorkout: activeWorkout,
    );
  }
}
