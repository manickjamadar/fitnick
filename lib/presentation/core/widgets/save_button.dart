import 'package:fitnick/presentation/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;

  const SaveButton({Key key, this.title = "Save", @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      title: title,
      onPressed: onPressed,
    );
  }
}
