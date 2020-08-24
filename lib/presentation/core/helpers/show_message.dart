import 'package:flutter/material.dart';

abstract class MessageType {
  Color get color;
}

class WarningMessage extends MessageType {
  @override
  Color get color => Colors.yellow;
}

class ErrorMessage extends MessageType {
  @override
  Color get color => Colors.red;
}

class SuccessMessage extends MessageType {
  @override
  Color get color => Colors.green;
}

class InfoMessage extends MessageType {
  @override
  Color get color => Colors.blue;
}

void showMessage(BuildContext context,
    {@required String message, @required MessageType type}) {
  final scaffold = Scaffold.of(context);
  scaffold.hideCurrentSnackBar();
  scaffold.showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 2),
      content: Text(message, style: TextStyle(color: Colors.white)),
      backgroundColor: type.color));
}
