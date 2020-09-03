import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/core/widgets/alert_title.dart';
import 'package:fitnick/presentation/core/widgets/done_action_buttons.dart';
import 'package:flutter/material.dart';

class RawInputDialog extends StatefulWidget {
  final String initialValue;
  final String title;
  final TextInputType inputType;
  const RawInputDialog(
      {Key key,
      @required this.initialValue,
      @required this.title,
      this.inputType = TextInputType.number})
      : super(key: key);

  @override
  _RawInputDialogState createState() => _RawInputDialogState();
}

class _RawInputDialogState extends State<RawInputDialog> {
  TextEditingController _controller;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(FitnickTheme.radius)),
      titlePadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      title: AlertTitle(title: widget.title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            autofocus: true,
            keyboardType: widget.inputType,
            onEditingComplete: () => _onDone(context),
            controller: _controller,
            style: FitnickTheme.inputTextStyle(context),
            decoration: FitnickTheme.inputDecoration,
          ),
          SizedBox(
            height: 30,
          ),
          DoneActionButtons(
              onCancel: () => _onCancel(context),
              onDone: () => _onDone(context))
        ],
      ),
    );
  }

  void _onDone(BuildContext context) {
    Navigator.pop(context, _controller.text);
  }

  void _onCancel(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
