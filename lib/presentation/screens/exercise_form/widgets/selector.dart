import 'package:fitnick/presentation/screens/exercise_form/widgets/selector_chip.dart';
import 'package:flutter/material.dart';

class Selector<T> extends StatefulWidget {
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
  _SelectorState<T> createState() => _SelectorState<T>();
}

class _SelectorState<T> extends State<Selector<T>> {
  List<T> selectedValues = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Wrap(
            runSpacing: 10,
            spacing: 10,
            children: widget.options
                .map((option) => SelectorChip(
                      color: Theme.of(context).primaryColor,
                      title: widget.optionLabel(option),
                      selected: selectedValues.indexOf(option) != -1,
                      onTap: () => onChipTap(option),
                    ))
                .toList(),
          ),
        )
      ],
    );
  }

  void onChipTap(T option) {
    if (widget.selectMultiple) {
      setState(() {
        final optionIndex = selectedValues.indexOf(option);
        if (optionIndex != -1) {
          selectedValues.removeAt(optionIndex);
        } else {
          selectedValues.add(option);
        }
      });
    } else {
      setState(() {
        selectedValues = [option];
      });
    }
    if (widget.onSelect != null) {
      widget.onSelect([...selectedValues]);
    }
  }

  @override
  void initState() {
    selectedValues = [...widget.initialValues];
    super.initState();
  }
}
