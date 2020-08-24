import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/presentation/core/fitnick_actions/fitnick_actions.dart';
import 'package:fitnick/presentation/core/widgets/action_button.dart';
import 'package:fitnick/presentation/core/widgets/not_found_action.dart';
import 'package:fitnick/presentation/screens/home/widgets/active_workout/active_workout_item.dart';
import 'package:fitnick/shared/fitnick_image_provider.dart';
import 'package:flutter/material.dart';

class ActiveWorkoutListView extends StatelessWidget {
  final List<ActiveWorkout> activeWorkouts;

  const ActiveWorkoutListView({Key key, @required this.activeWorkouts})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return activeWorkouts.isEmpty
        ? buildNoActiveWorkout(context)
        : buildActiveWorkoutList();
  }

  Widget buildNoActiveWorkout(BuildContext context) {
    return NotFoundAction(
        image: Image.asset(FitnickImageProvider.no_workout),
        title: "No Wokrout available",
        actionButton: ActionButton(
          label: "Create Workout",
          elevation: 10,
          onPressed: () =>
              FitnickActions(context).onCreateWorkotuButtonPressed(),
        ));
  }

  ListView buildActiveWorkoutList() {
    return ListView.builder(
      itemBuilder: (_, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ActiveWorkoutItem(
            activeWorkout: activeWorkouts[index],
          ),
        );
      },
      itemCount: activeWorkouts.length,
    );
  }
}
