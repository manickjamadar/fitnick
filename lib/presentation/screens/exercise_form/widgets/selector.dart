import 'package:fitnick/domain/exercise/models/exercise_level.dart';
import 'package:fitnick/domain/exercise/models/name.dart';
import 'package:flutter/material.dart';

class Selector extends StatefulWidget {
  final String label;

  const Selector({Key key, @required this.label}) : super(key: key);
  @override
  _SelectorState createState() => _SelectorState();
}

class _SelectorState<T extends Name> extends State<Selector> {
  ExerciseLevel currentValue;
  @override
  void initState() {
    currentValue = ExerciseLevel.all[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(widget.label),
        DropdownButton<ExerciseLevel>(
          value: currentValue,
          onChanged: (nextValue) {
            setState(() {
              currentValue = nextValue;
            });
          },
          items: ExerciseLevel.all
              .map((level) => DropdownMenuItem<ExerciseLevel>(
                    child: Text(level.name),
                    value: level,
                  ))
              .toList(),
        )
      ],
    );
  }
}
