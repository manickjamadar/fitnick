import 'package:flutter/material.dart';

class Checker extends StatefulWidget {
  final void Function(bool selected) onSelect;
  final bool initialValue;

  const Checker({Key key, @required this.onSelect, this.initialValue = false})
      : super(key: key);
  @override
  _CheckerState createState() => _CheckerState();
}

class _CheckerState extends State<Checker> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            selected = !selected;
            if (widget.onSelect != null) {
              widget.onSelect(selected);
            }
          });
        },
        icon: Icon(
          Icons.check_box,
          color: selected ? Theme.of(context).primaryColor : Colors.grey[400],
        ));
  }

  @override
  void initState() {
    selected = widget.initialValue;
    super.initState();
  }
}
