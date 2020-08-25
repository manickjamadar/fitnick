import 'package:flutter/material.dart';

import '../../../fitnick_icons.dart';

class UploadButton extends StatelessWidget {
  final void Function() onPressed;
  final Color color;
  final Color iconColor;
  const UploadButton(
      {Key key,
      @required this.onPressed,
      this.color,
      this.iconColor = Colors.white})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(
        backgroundColor: color ?? Colors.black.withOpacity(0.6),
        child: Icon(FitnickIcons.upload, color: iconColor),
      ),
    );
  }
}
