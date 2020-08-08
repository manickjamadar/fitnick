import 'package:fitnick/application/active_workout/active_workout_form/active_workout_form_cubit.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
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
    return Card(
      child: ListTile(
        onTap: () => _onItemTap(context),
        title: Text(activeExercise.exercise.name.safeValue),
        subtitle: Text("${activeExercise.sets.length} sets"),
        trailing: IconButton(
          icon: Icon(Icons.clear, color: Colors.red),
          onPressed: () {
            if (onRemove != null) {
              onRemove();
            }
          },
        ),
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
