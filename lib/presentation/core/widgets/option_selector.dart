import 'package:fitnick/presentation/core/widgets/custom_chip.dart';
import 'package:flutter/material.dart';

class OptionSelector<T> extends StatelessWidget {
  final List<T> options;
  final String Function(T option) optionLabel;
  final List<T> initialValues;
  final void Function(List<T> selectedOptions) onSelect;
  final bool selectMultiple;
  const OptionSelector(
      {Key key,
      @required this.options,
      @required this.optionLabel,
      this.initialValues = const [],
      this.onSelect,
      this.selectMultiple = true})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Wrap(
      runSpacing: 10,
      spacing: 10,
      children: options.map((option) {
        final isSelected = initialValues.indexOf(option) != -1;
        return CustomChip(
          label: Text(optionLabel(option)),
          selected: isSelected,
          onSelect: () => _onOptionSelect(option),
        );
      }).toList(),
    ));
  }

  void _onOptionSelect(T option) {
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
      onSelect(selectedValues);
    }
  }
}
