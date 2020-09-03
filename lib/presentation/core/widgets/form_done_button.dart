import 'package:flutter/material.dart';

import 'action_button.dart';

class FormDoneButton extends StatelessWidget {
  final String label;
  final void Function() onDone;
  final Color color;
  const FormDoneButton(
      {Key key, @required this.label, @required this.onDone, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.all(18),
        width: double.infinity,
        child: ActionButton(
          color: color,
          elevation: 10,
          label: label,
          onPressed: onDone,
        ),
      ),
    );
  }
}
