import 'package:flutter/material.dart';

import '../styles.dart';

class ExerciseSetCircle extends StatelessWidget {
  final Color color;
  final double size;
  final int totalSets;

  const ExerciseSetCircle(
      {Key key, this.color, this.size = 54, @required this.totalSets})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final actualColor = color ?? Theme.of(context).accentColor;
    final style = FitnickTextTheme(context)
        .small
        .copyWith(color: actualColor, fontWeight: FontWeight.bold);
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: actualColor.withOpacity(0.1),
        border: Border.all(color: actualColor),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(totalSets.toString(), style: style),
          Text("Sets", style: style)
        ],
      ),
    );
  }
}
