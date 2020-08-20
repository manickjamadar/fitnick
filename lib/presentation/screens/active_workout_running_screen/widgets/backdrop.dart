import 'package:flutter/material.dart';

class BackDrop extends StatelessWidget {
  final Widget child;

  const BackDrop({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            width: double.infinity,
            color: Colors.black.withOpacity(0.8),
            child: child,
          )),
    );
  }
}
