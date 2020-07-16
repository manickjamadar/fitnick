import 'package:flutter/material.dart';

class MultipleSelector<T> extends StatelessWidget {
  final String title;
  final List<T> options;
  final String Function(T option) optionLabel;
  final List<T> initialValues;
  const MultipleSelector(
      {Key key,
      @required this.title,
      @required this.options,
      this.initialValues = const [],
      @required this.optionLabel})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Wrap(
            spacing: 10,
            children: options
                .map((option) => SelectorChip(
                      title: optionLabel(option),
                      selected: initialValues.indexOf(option) != -1,
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}

class SelectorChip extends StatelessWidget {
  final String title;
  final Color color;
  final bool selected;
  const SelectorChip(
      {Key key,
      @required this.title,
      this.color = Colors.black,
      this.selected = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: BoxDecoration(
            color: selected ? color : Colors.transparent,
            borderRadius: BorderRadius.circular(50),
            border: Border.all()),
        child: Text(title,
            style: TextStyle(color: selected ? Colors.white : color)));
  }
}
