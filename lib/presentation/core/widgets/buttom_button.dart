import 'package:fitnick/presentation/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;

  BottomButton({Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomButton(
          title: title,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
