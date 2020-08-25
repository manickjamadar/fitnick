import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final Text label;
  final Color labelColor;
  final Color color;
  final void Function() onDelete;
  final bool selected;
  const CustomChip(
      {Key key,
      @required this.label,
      this.labelColor = Colors.white,
      this.color,
      this.onDelete,
      this.selected = true})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mainColor = color ?? Theme.of(context).primaryColor;
    final relativeSize = label.style.fontSize;
    return Container(
        padding: EdgeInsets.symmetric(
            vertical: relativeSize * 0.4, horizontal: relativeSize * 0.8),
        decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(relativeSize * 2)),
        child: label);
  }
}
