import 'package:fitnick/presentation/core/widgets/alert_title.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class InputDialog extends StatefulWidget {
  final String title;
  final String initialValue;
  final void Function() onCancel;
  final void Function(String value) onDone;
  final TextInputType inputType;

  const InputDialog(
      {Key key,
      @required this.title,
      this.initialValue = "",
      this.inputType = TextInputType.number,
      this.onCancel,
      this.onDone})
      : super(key: key);

  @override
  _InputDialogState createState() => _InputDialogState();
}

class _InputDialogState extends State<InputDialog> {
  TextEditingController _inputController;
  @override
  void initState() {
    super.initState();
    _inputController = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _inputController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(FitnickTheme.radius)),
      titlePadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      title: AlertTitle(
        title: widget.title,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            autofocus: true,
            keyboardType: widget.inputType,
            onEditingComplete: () => _onDone(context),
            controller: _inputController,
            style: FitnickTheme.inputTextStyle(context),
            decoration: FitnickTheme.inputDecoration,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.red,
                child: Icon(Icons.clear, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                  if (widget.onCancel != null) {
                    widget.onCancel();
                  }
                },
              ),
              FloatingActionButton(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
                onPressed: () => _onDone(context),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _onDone(BuildContext context) {
    Navigator.pop(context);
    if (widget.onDone != null) {
      widget.onDone(_inputController.text);
    }
  }
}
