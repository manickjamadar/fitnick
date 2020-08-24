import 'package:flutter/material.dart';

import '../styles.dart';

class LabelCircle extends StatelessWidget {
  final double radius;
  final String label;
  final Color labelColor;
  final Color color;

  const LabelCircle(
      {Key key,
      @required this.radius,
      @required this.label,
      this.labelColor = Colors.white,
      this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mainColor = color ?? Theme.of(context).accentColor;
    return Container(
      width: radius / 2,
      height: radius / 2,
      decoration: BoxDecoration(
        border: Border.all(color: mainColor, width: 3),
        borderRadius: BorderRadius.circular(radius),
        color: mainColor.withOpacity(0.3),
      ),
      child: Center(
        child: FittedBox(
          child: Text(label,
              style: FitnickTextTheme(context)
                  .heading
                  .copyWith(color: labelColor)),
        ),
      ),
    );
  }
}
