import 'package:fitnick/application/active_workout/active_workout_form/active_workout_form_cubit.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/fitnick_icons.dart';
import 'package:fitnick/presentation/core/widgets/raw_exercise_tile.dart';
import 'package:fitnick/presentation/screens/active_exercise_edit_screen/active_exercise_edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActiveExerciseEditItem extends StatelessWidget {
  final ActiveExercise activeExercise;
  final void Function() onRemove;
  const ActiveExerciseEditItem(
      {Key key, @required this.activeExercise, this.onRemove})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Theme.of(context).accentColor.withOpacity(0.3),
      onTap: () => _onItemTap(context),
      child: RawExerciseTile(
        leading: Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Icon(
            Icons.drag_handle,
            color: Colors.grey,
          ),
        ),
        trailing: IconButton(
          icon: Icon(FitnickIcons.close, color: Colors.red),
          onPressed: () {
            if (onRemove != null) {
              onRemove();
            }
          },
        ),
        exercise: activeExercise.exercise,
      ),
    );
  }

  void _onItemTap(BuildContext context) async {
    final ActiveExercise updatedActiveExercise = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => ActiveExerciseEditScreen(
                  activeExercise: activeExercise,
                )));
    if (updatedActiveExercise == null) {
      return;
    }
    BlocProvider.of<ActiveWorkoutFormCubit>(context)
        .activeExerciseUpdated(activeExercise: updatedActiveExercise);
  }
}
