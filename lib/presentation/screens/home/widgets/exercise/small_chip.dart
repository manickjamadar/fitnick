import 'package:flutter/material.dart';

class SmallChip extends StatelessWidget {
  final String title;
  final Color color;
  const SmallChip({Key key, @required this.title, this.color = Colors.grey})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: color,
        ),
        child:
            Text(title, style: TextStyle(color: Colors.white, fontSize: 13)));
  }
}
