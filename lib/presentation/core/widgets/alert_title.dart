import 'package:fitnick/presentation/core/styles.dart';
import 'package:flutter/material.dart';

class AlertTitle extends StatelessWidget {
  final String title;

  const AlertTitle({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: FitnickTextTheme(context).heading,
      textAlign: TextAlign.center,
    );
  }
}
