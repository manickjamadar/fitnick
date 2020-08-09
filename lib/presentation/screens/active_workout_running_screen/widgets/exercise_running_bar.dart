import 'package:flutter/material.dart';

class ExerciseRunningBar extends StatelessWidget {
  final int totalExercise;
  final int currentExerciseIndex;
  final double height;
  final Color activeColor;
  const ExerciseRunningBar({
    Key key,
    @required this.totalExercise,
    @required this.currentExerciseIndex,
    this.height = 8,
    this.activeColor = Colors.blue,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(10);
    return Stack(
      children: [
        Container(
          height: height,
          decoration:
              BoxDecoration(color: Colors.grey[200], borderRadius: radius),
        ),
        LayoutBuilder(
          builder: (_, constraints) {
            final width = constraints.biggest.width;
            return AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              width: width * progress,
              height: height,
              decoration: BoxDecoration(
                  borderRadius: radius,
                  gradient: LinearGradient(
                      colors: [activeColor.withOpacity(0.4), activeColor])),
            );
          },
        ),
      ],
    );
  }

  double get progress {
    double result = (currentExerciseIndex + 1) / totalExercise;
    if (result < 0) {
      result = 0;
    } else if (result > 1) {
      result = 1;
    }
    return result;
  }
}
