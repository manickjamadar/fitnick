import 'package:fitnick/application/core/helpers/time_formatter.dart';
import 'package:fitnick/domain/active_exercise/models/active_exercise.dart';
import 'package:fitnick/domain/active_exercise/models/sub_models/exercise_perform_type.dart';
import 'package:fitnick/domain/active_exercise/models/sub_models/weight_unit.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/core/widgets/exercise_title.dart';
import 'package:fitnick/presentation/screens/active_exercise_edit_screen/widgets/value_selector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActiveExerciseEditScreen extends StatefulWidget {
  final ActiveExercise activeExercise;
  const ActiveExerciseEditScreen({Key key, @required this.activeExercise})
      : super(key: key);
  @override
  _ActiveExerciseEditScreenState createState() =>
      _ActiveExerciseEditScreenState();

  static const String routeName = "/active-exercise-edit-screen";
  static Widget generateRoute({@required ActiveExercise activeExercise}) {
    return ActiveExerciseEditScreen(
      activeExercise: activeExercise,
    );
  }
}

class _ActiveExerciseEditScreenState extends State<ActiveExerciseEditScreen> {
  ActiveExercise activeExercise;
  @override
  Widget build(BuildContext context) {
    final screenPadding = MediaQuery.of(context).padding;
    final height = MediaQuery.of(context).size.height -
        screenPadding.top -
        screenPadding.bottom;
    final firstSectionHeight = height * 0.2;
    final thirdSectionHeight = height * 0.15;
    final secondSectionHeight =
        height - firstSectionHeight - thirdSectionHeight;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
            child: SafeArea(
          child: Column(
            children: [
              buildFirstSection(context, firstSectionHeight),
              buildSecondSection(context, secondSectionHeight),
              buildThirdSection(context, thirdSectionHeight),
            ],
          ),
        )),
      ),
    );
  }

  Widget buildFirstSection(BuildContext context, double height) {
    return Container(
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ExerciseTitle(
            title: activeExercise.exercise.name.safeValue,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Reps Tempo"),
              ValueSelector(
                  title: "Secs",
                  value: activeExercise.repsTempo,
                  onValueChanged: (value) => onRepTempoChanged(value),
                  disabled: !activeExercise.isRepsTempoRequired)
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.clear, color: Colors.transparent),
                onPressed: null,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Text("Repeat"), Text("Weight")],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSecondSection(BuildContext context, double height) {
    return Container(
      height: height,
      child: ListView.builder(
        itemBuilder: (context, index) {
          final exerciseSet = activeExercise.sets[index];
          final clearDisabled = index == 0;
          return Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.clear,
                        color: clearDisabled ? Colors.grey : Colors.red),
                    onPressed: clearDisabled ? null : () => onRemoveSet(index),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ValueSelector<ExercisePerformType>(
                          title: exerciseSet.performType.name,
                          value: exerciseSet.performCount,
                          items: ExercisePerformType.all
                              .map((e) => PopupMenuItem<ExercisePerformType>(
                                  child: Text(e.name), value: e))
                              .toList(),
                          onSelected: (newValue) =>
                              onPerformTypeChanged(newValue, index),
                          onValueChanged: (value) =>
                              onPerformCountChanged(value, index),
                        ),
                        ValueSelector<WeightUnit>(
                          title: exerciseSet.weightUnit.name,
                          value: exerciseSet.weightCount,
                          items: WeightUnit.all
                              .map((e) => PopupMenuItem<WeightUnit>(
                                  child: Text(e.name), value: e))
                              .toList(),
                          onSelected: (newValue) =>
                              onWeightUnitChanged(newValue, index),
                          onValueChanged: (value) =>
                              onWeightCountChanged(value, index),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  showRestTimePicker(context, (duration) {
                    onRestTimeChanged(duration, index);
                  }, Duration(seconds: exerciseSet.rest));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                      "Rest : ${formatTime(Duration(seconds: exerciseSet.rest))}",
                      style: FitnickTextTheme(context)
                          .small
                          .copyWith(color: Theme.of(context).accentColor)),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor.withOpacity(0.05),
                      border: Border.all(color: Theme.of(context).accentColor),
                      borderRadius: BorderRadius.circular(6)),
                ),
              )
            ],
          );
        },
        itemCount: activeExercise.sets.length,
      ),
    );
  }

  Widget buildThirdSection(BuildContext context, double height) {
    return Container(
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              width: double.infinity,
              child: RaisedButton(
                  elevation: 0,
                  color: Colors.grey[300],
                  child: Text("Add Set"),
                  onPressed: () => onAddSet()),
            ),
            Container(
              height: 48,
              width: double.infinity,
              child: RaisedButton(
                elevation: 0,
                textColor: Colors.white,
                color: Colors.blue,
                child: Text("Save"),
                onPressed: () => onSave(context),
              ),
            )
          ],
        ));
  }

  void onAddSet() {
    setState(() {
      activeExercise = activeExercise.copyWith(
          sets: [...activeExercise.sets, activeExercise.sets.last.copyWith()]);
    });
  }

  void onRemoveSet(int index) {
    final sets = [...activeExercise.sets];
    sets.removeAt(index);
    setState(() {
      activeExercise = activeExercise.copyWith(sets: sets);
    });
  }

  void onPerformCountChanged(int count, int index) {
    final sets = [...activeExercise.sets];
    sets[index] = sets[index].copyWith(performCount: count);
    setState(() {
      activeExercise = activeExercise.copyWith(sets: sets);
    });
  }

  void onPerformTypeChanged(ExercisePerformType type, int index) {
    final sets = [...activeExercise.sets];
    sets[index] = sets[index].copyWith(performType: type);
    setState(() {
      activeExercise = activeExercise.copyWith(sets: sets);
    });
  }

  void onWeightUnitChanged(WeightUnit unit, int index) {
    final sets = [...activeExercise.sets];
    sets[index] = sets[index].copyWith(weightUnit: unit);
    setState(() {
      activeExercise = activeExercise.copyWith(sets: sets);
    });
  }

  void onRepTempoChanged(int tempo) {
    setState(() {
      activeExercise = activeExercise.copyWith(repsTempo: tempo);
    });
  }

  void onWeightCountChanged(int count, int index) {
    final sets = [...activeExercise.sets];
    sets[index] = sets[index].copyWith(weightCount: count);
    setState(() {
      activeExercise = activeExercise.copyWith(sets: sets);
    });
  }

  void onRestTimeChanged(Duration duration, int index) {
    final sets = [...activeExercise.sets];
    sets[index] = sets[index].copyWith(rest: duration.inSeconds);
    setState(() {
      activeExercise = activeExercise.copyWith(sets: sets);
    });
  }

  void showRestTimePicker(BuildContext context,
      void Function(Duration) onTimePicked, Duration initialTime) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (_) {
          return Container(
            height: 250,
            child: CupertinoTimerPicker(
              initialTimerDuration: initialTime,
              mode: CupertinoTimerPickerMode.ms,
              onTimerDurationChanged: onTimePicked,
            ),
          );
        });
  }

  void onSave(BuildContext context) {
    Navigator.pop(context, activeExercise);
  }

  @override
  void initState() {
    super.initState();
    activeExercise = widget.activeExercise;
  }
}
