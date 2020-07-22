import 'package:fitnick/presentation/screens/exercise_form/widgets/selector_chip.dart';
import 'package:flutter/material.dart';

class Selector<T> extends StatelessWidget {
  final String title;
  final List<T> options;
  final String Function(T option) optionLabel;
  final List<T> initialValues;
  final bool selectMultiple;
  final void Function(List<T> selectedOptions) onSelect;
  const Selector(
      {Key key,
      @required this.title,
      @required this.options,
      this.initialValues = const [],
      this.onSelect,
      this.selectMultiple = false,
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
            runSpacing: 10,
            spacing: 10,
            children: options
                .map((option) => SelectorChip(
                      color: Theme.of(context).primaryColor,
                      title: optionLabel(option),
                      selected: initialValues.indexOf(option) != -1,
                      onTap: () => onChipTap(option),
                    ))
                .toList(),
          ),
        )
      ],
    );
  }

  void onChipTap(T option) {
    List<T> selectedValues = [...initialValues];
    if (selectMultiple) {
      final optionIndex = selectedValues.indexOf(option);
      if (optionIndex != -1) {
        selectedValues.removeAt(optionIndex);
      } else {
        selectedValues.add(option);
      }
    } else {
      selectedValues = [option];
    }
    if (onSelect != null) {
      onSelect([...selectedValues]);
    }
  }
}
