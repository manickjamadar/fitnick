import 'package:flutter/material.dart';

class LogRepsDialog extends StatefulWidget {
  final String initialReps;
  final void Function(int reps) onLog;
  final void Function() onCancel;

  const LogRepsDialog(
      {Key key,
      @required this.initialReps,
      @required this.onLog,
      @required this.onCancel})
      : super(key: key);

  @override
  _LogRepsDialogState createState() => _LogRepsDialogState();
}

class _LogRepsDialogState extends State<LogRepsDialog> {
  TextEditingController _controller;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Log Reps"),
      content: TextFormField(
        autofocus: true,
        controller: _controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(border: OutlineInputBorder()),
      ),
      actions: [
        FlatButton(
          child: Text("Skip"),
          onPressed: () {
            widget.onCancel();
            Navigator.pop(context);
          },
        ),
        FlatButton(
            child: Text("Log"),
            onPressed: () {
              widget.onLog(
                  _controller.text.isEmpty ? 0 : int.parse(_controller.text));
              Navigator.pop(context);
            }),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialReps);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
