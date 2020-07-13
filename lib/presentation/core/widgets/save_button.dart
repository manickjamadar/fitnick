import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;

  const SaveButton({Key key, this.title = "Save", @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(title),
          color: Colors.black,
          textColor: Colors.white,
          onPressed: onPressed),
    );
  }
}
