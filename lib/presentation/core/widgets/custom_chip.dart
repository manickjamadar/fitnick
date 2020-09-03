import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final Text label;
  final Color color;
  final void Function() onSelect;
  final bool selected;
  const CustomChip(
      {Key key,
      @required this.label,
      this.color,
      this.onSelect,
      this.selected = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mainColor = color ?? Theme.of(context).primaryColor;
    final labelColor = selected ? Colors.white : mainColor;
    final mainLabel = Text(
      label.data,
      style: label?.style?.copyWith(
            color: labelColor,
          ) ??
          TextStyle(
            fontSize: 14,
            color: labelColor,
          ),
    );
    final relativeSize = mainLabel.style.fontSize;
    final radius = relativeSize * 3;
    return InkWell(
      borderRadius: BorderRadius.circular(radius),
      splashColor: mainColor.withOpacity(0.3),
      highlightColor: Colors.transparent,
      onTap: () {
        if (onSelect != null) {
          onSelect();
        }
      },
      child: AnimatedContainer(
          duration: Duration(milliseconds: 250),
          padding: EdgeInsets.symmetric(
              vertical: relativeSize * 0.3, horizontal: relativeSize * 0.76),
          decoration: BoxDecoration(
              border: Border.all(color: mainColor, width: relativeSize * 0.1),
              color: selected ? mainColor : mainColor.withOpacity(0.05),
              borderRadius: BorderRadius.circular(radius)),
          child: mainLabel),
    );
  }
}
