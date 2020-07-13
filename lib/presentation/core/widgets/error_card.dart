import 'package:flutter/material.dart';

class ErrorCard extends StatelessWidget {
  final String title;

  const ErrorCard({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.red,
        child: ListTile(
          title: Text(title, style: TextStyle(color: Colors.white)),
        ));
  }
}
