import 'package:fitnick/domain/exercise/models/name.dart';
import 'package:flutter/material.dart';

class Selector<T extends Name> extends StatelessWidget {
  final String label;
  final List<T> options;
  final void Function(T) onChanged;
  final T value;
  const Selector(
      {Key key,
      @required this.label,
      @required this.options,
      @required this.value,
      this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        DropdownButton<T>(
          value: value,
          onChanged: (nextValue) {
            if (onChanged != null) {
              onChanged(nextValue);
            }
          },
          items: options
              .map((option) => DropdownMenuItem<T>(
                    child: Text(option.name),
                    value: option,
                  ))
              .toList(),
        )
      ],
    );
  }
}
