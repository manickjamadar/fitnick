import 'package:fitnick/presentation/screens/active_exercise_edit_screen/widgets/value_input_dialog.dart';
import 'package:flutter/material.dart';

class ValueSelector<T> extends StatelessWidget {
  final int value;
  final void Function(int) onValueChanged;
  final bool disabled;
  final String title;
  final List<PopupMenuEntry<T>> items;
  final void Function(T) onSelected;

  const ValueSelector(
      {Key key,
      @required this.value,
      @required this.title,
      this.items,
      this.onSelected,
      this.onValueChanged,
      this.disabled = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bool popupEnabled = items != null && items.isNotEmpty;
    final width = MediaQuery.of(context).size.width;
    final padding = width * 0.035;
    final textFieldSize = width * 0.05;
    final fontSize = width * 0.03;
    final menuButtonText =
        Text(title, style: TextStyle(color: Colors.white, fontSize: fontSize));
    return IgnorePointer(
      ignoring: disabled,
      child: Opacity(
        opacity: disabled ? 0.4 : 1,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  showValueDialog(context);
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: padding),
                  child: Container(
                      width: textFieldSize,
                      height: textFieldSize,
                      child: FittedBox(
                          child: Text(value.toString(),
                              style: TextStyle(fontSize: fontSize)))),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: padding / 3, horizontal: padding),
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                child: popupEnabled
                    ? PopupMenuButton<T>(
                        child: menuButtonText,
                        onSelected: onSelected,
                        itemBuilder: (context) => items,
                      )
                    : menuButtonText,
              )
            ],
          ),
        ),
      ),
    );
  }

  void showValueDialog(BuildContext context) async {
    final String inputValue = await showDialog(
        context: context,
        builder: (_) {
          return ValueInputDialog(
            title: "Title",
            value: value.toString(),
          );
        });
    if (inputValue != null && onValueChanged != null) {
      onValueChanged(int.parse(inputValue));
    }
  }
}
