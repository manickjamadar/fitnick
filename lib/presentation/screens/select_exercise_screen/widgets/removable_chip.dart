import 'package:flutter/material.dart';

class RemovableChip extends StatelessWidget {
  final String title;
  final void Function() onRemove;
  final Color color;
  const RemovableChip(
      {Key key,
      this.color = Colors.black,
      @required this.title,
      @required this.onRemove})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("on remove");
        if (onRemove != null) {
          onRemove();
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            Icon(
              Icons.clear,
              color: Colors.white,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
