import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double progress;
  final double height;

  const ProgressBar({Key key, @required this.progress, this.height = 6})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(10);
    final activeColor = Theme.of(context).primaryColor;
    return Stack(
      children: [
        Container(
          height: height,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: borderRadius),
        ),
        LayoutBuilder(
          builder: (_, constraints) {
            final width = constraints.biggest.width;
            return Container(
              width: width * progress,
              height: height,
              decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  gradient: LinearGradient(
                      colors: [activeColor.withOpacity(0.4), activeColor])),
            );
          },
        ),
      ],
    );
  }
}
