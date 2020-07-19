import 'package:flutter/material.dart';

class Boundary extends StatelessWidget {
  final Widget child;
  const Boundary({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid)),
      child: child,
    );
  }
}
