import 'package:flutter/material.dart';

class SelectorChip extends StatelessWidget {
  final String title;
  final Color color;
  final bool selected;
  final void Function() onTap;
  const SelectorChip(
      {Key key,
      @required this.title,
      this.color = Colors.black,
      this.onTap,
      this.selected = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          decoration: BoxDecoration(
              color: selected ? color : Colors.transparent,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: color)),
          child: Text(title,
              style: TextStyle(color: selected ? Colors.white : color))),
    );
  }
}
