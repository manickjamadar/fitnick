import 'package:fitnick/domain/exercise/models/name.dart';
import 'package:flutter/material.dart';

class Selector<T extends Name> extends StatefulWidget {
  final String label;
  final List<T> options;
  final void Function(T) onChanged;
  const Selector(
      {Key key, @required this.label, @required this.options, this.onChanged})
      : super(key: key);
  @override
  _SelectorState<T> createState() => _SelectorState<T>();
}

class _SelectorState<T extends Name> extends State<Selector<T>> {
  T currentValue;
  @override
  void initState() {
    currentValue = widget.options[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(widget.label),
        DropdownButton<T>(
          value: currentValue,
          onChanged: (nextValue) {
            setState(() {
              currentValue = nextValue;
            });
            if (widget.onChanged != null) {
              widget.onChanged(nextValue);
            }
          },
          items: widget.options
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
