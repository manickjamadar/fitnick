import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/core/widgets/custom_chip.dart';
import 'package:fitnick/presentation/core/widgets/exercise_thumbnail.dart';
import 'package:fitnick/presentation/core/widgets/exercise_title.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/video_preview.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/level_flash.dart';
import 'package:flutter/material.dart';

class ExerciseDetailsScreen extends StatelessWidget {
  static const String routeName = "/exercise_details";
  static Widget generateRoute({@required Exercise exercise}) =>
      ExerciseDetailsScreen(
        exercise: exercise,
      );

  final Exercise exercise;
  const ExerciseDetailsScreen({Key key, @required this.exercise})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercise Details"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              VideoPreview(
                path: exercise.videoPath,
              ),
              buildSpace(),
              ExerciseTitle(
                title: exercise.name.safeValue,
              ),
              buildSpace(),
              LevelFlash(
                level: exercise.levels.first,
                size: 24,
              ),
              buildExerciseOption(context,
                  title: "Types",
                  color: Colors.green,
                  options: exercise.types.map((type) => type.name).toList()),
              buildSpace(),
              buildSpace(),
              buildExerciseOption(context,
                  title: "Tools",
                  color: Colors.brown,
                  options: exercise.tools.map((tool) => tool.name).toList()),
              buildSpace(),
              buildSpace(),
              buildExerciseOption(context,
                  title: "Primary Muscle Targets",
                  color: Colors.blue,
                  options: exercise.primaryTargets
                      .map((primaryTarget) => primaryTarget.name)
                      .toList()),
              buildSpace(),
              buildSpace(),
              buildExerciseOption(context,
                  title: "Secondary Muscle Targets",
                  color: Colors.deepOrange,
                  options: exercise.secondaryTargets
                      .map((secondaryTarget) => secondaryTarget.name)
                      .toList()),
              buildSpace(),
              buildSpace(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildExerciseOption(BuildContext context,
      {@required String title, @required List<String> options, Color color}) {
    if (options.isEmpty) {
      return Container();
    }
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: FitnickTextTheme(context)
                .heading2
                .copyWith(color: Colors.grey[600]),
          ),
          buildSpace(),
          Wrap(
            runSpacing: 10,
            spacing: 10,
            children: options
                .map((option) => Chip(
                      backgroundColor: color.withOpacity(0.08),
                      label: Text(
                        option,
                        style: TextStyle(
                            fontSize: 12,
                            color: color,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w700),
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget buildSpace() {
    return SizedBox(height: 10);
  }
}
