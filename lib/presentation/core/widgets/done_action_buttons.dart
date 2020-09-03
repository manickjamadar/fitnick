import 'package:flutter/material.dart';

class DoneActionButtons extends StatelessWidget {
  final void Function() onDone;
  final void Function() onCancel;

  const DoneActionButtons(
      {Key key, @required this.onDone, @required this.onCancel})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
            backgroundColor: Colors.red,
            child: Icon(Icons.clear, color: Colors.white),
            onPressed: onCancel),
        FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(
            Icons.check,
            color: Colors.white,
          ),
          onPressed: onDone,
        ),
      ],
    );
  }
}
