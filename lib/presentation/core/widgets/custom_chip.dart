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
      this.labelColor,
      this.color,
      this.onDelete,
      this.selected = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mainColor = color ?? Theme.of(context).primaryColor;
    final relativeSize = label.style.fontSize;
    return Container(
        padding: EdgeInsets.symmetric(
            vertical: relativeSize * 0.3, horizontal: relativeSize * 0.76),
        decoration: BoxDecoration(
            border: Border.all(color: mainColor, width: relativeSize * 0.2),
            color: selected ? mainColor : mainColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(relativeSize * 3)),
        child: Text(label.data,
            style: label.style.copyWith(
                color: labelColor != null
                    ? labelColor
                    : (selected ? Colors.white : mainColor))));
  }
}
