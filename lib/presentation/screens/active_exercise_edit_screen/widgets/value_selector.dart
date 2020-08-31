import 'package:fitnick/presentation/core/widgets/input_dialog.dart';
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
    final double radius = 8;
    final menuButtonText =
        Text(title, style: TextStyle(color: Colors.white, fontSize: fontSize));
    return IgnorePointer(
      ignoring: disabled,
      child: Opacity(
        opacity: disabled ? 0.4 : 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            decoration: BoxDecoration(color: Colors.grey[100]),
            // padding: EdgeInsets.all(10),
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
                        child: Center(
                          child: FittedBox(
                            child: Text(value.toString(),
                                style: TextStyle(
                                    fontSize: fontSize,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: padding / 2, horizontal: padding),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorDark,
                      borderRadius: BorderRadius.circular(radius)),
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
      ),
    );
  }

  void showValueDialog(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (_) {
          return InputDialog(
            title: title,
            initialValue: value.toString(),
            onDone: (newValue) {
              onValueChanged(int.parse(newValue));
            },
          );
        });
  }
}
