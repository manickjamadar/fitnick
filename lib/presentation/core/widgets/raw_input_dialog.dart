import 'package:fitnick/presentation/core/styles.dart';
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
      title: Text(
        widget.title,
        style: FitnickTextTheme(context).heading,
        textAlign: TextAlign.center,
      ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                  backgroundColor: Colors.red,
                  child: Icon(Icons.clear, color: Colors.white),
                  onPressed: () => _onCancel(context)),
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
