import 'package:fitnick/presentation/core/styles.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final Color color;
  final void Function() onPressed;
  final double elevation;
  final double height;
  const ActionButton(
      {Key key,
      @required this.label,
      this.color,
      @required this.onPressed,
      this.height = 46,
      this.elevation = 0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(height)),
        elevation: elevation,
        color: this.color ?? Theme.of(context).accentColor,
        textColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 26),
        child: Text(label,
            style:
                FitnickTextTheme(context).button.copyWith(color: Colors.white)),
        onPressed: onPressed,
      ),
    );
  }
}
