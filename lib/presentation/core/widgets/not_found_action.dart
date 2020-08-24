import 'package:fitnick/presentation/core/widgets/action_button.dart';
import 'package:flutter/material.dart';

class NotFoundAction extends StatelessWidget {
  final Image image;
  final ActionButton actionButton;
  final String title;

  const NotFoundAction(
      {Key key,
      @required this.image,
      @required this.actionButton,
      @required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: width * 0.7, child: image),
        SizedBox(
          height: 20,
        ),
        Text(title),
        SizedBox(
          height: 20,
        ),
        actionButton
      ],
    );
  }
}
