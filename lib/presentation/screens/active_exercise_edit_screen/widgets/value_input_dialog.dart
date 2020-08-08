import 'package:flutter/material.dart';

class ValueInputDialog extends StatefulWidget {
  final String value;
  final String title;
  const ValueInputDialog({Key key, @required this.value, @required this.title})
      : super(key: key);

  @override
  _ValueInputDialogState createState() => _ValueInputDialogState();
}

class _ValueInputDialogState extends State<ValueInputDialog> {
  String _value;
  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        widget.title,
        textAlign: TextAlign.center,
      ),
      content: TextFormField(
        autofocus: true,
        initialValue: _value,
        onChanged: (value) => setState(() {
          _value = value;
        }),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(border: OutlineInputBorder()),
      ),
      actions: [
        FlatButton(
          child: Text("cancel"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FlatButton(
          child: Text("Ok"),
          onPressed: () {
            Navigator.pop(context, _value);
          },
        ),
      ],
    );
  }
}
