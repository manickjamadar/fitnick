import 'package:fitnick/presentation/core/widgets/option_selector_dialog.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/delete_chip.dart';
import 'package:flutter/material.dart';

import '../styles.dart';
import "../../../application/core/helpers/list_extension.dart";

class OptionEditor<T> extends StatelessWidget {
  final String title;
  final List<T> allOptions;
  final String Function(T option) optionLabel;
  final List<T> initialOptions;
  final void Function(List<T> newOptions) onOptionsChanged;

  const OptionEditor(
      {Key key,
      @required this.title,
      @required this.allOptions,
      @required this.optionLabel,
      this.initialOptions = const [],
      this.onOptionsChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(title, style: FitnickTextTheme(context).title),
          FlatButton(
            child: Text("+ Add",
                style: FitnickTextTheme(context)
                    .smallButton
                    .copyWith(color: Colors.grey)),
            onPressed: () => _onOptionAddButtonPressed(context),
          )
        ]),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: initialOptions
              .map((option) => DeleteChip(
                    label: optionLabel(option),
                    onDelete: () => _onOptionDelete(option, initialOptions),
                  ))
              .toList(),
        )
      ],
    );
  }

  void _onOptionDelete(T deletableOption, List<T> sourceOptions) {
    if (onOptionsChanged != null) {
      onOptionsChanged(sourceOptions.removeBy(deletableOption));
    }
  }

  void _onOptionAddButtonPressed(BuildContext context) async {
    final newOptions = await showDialog<List<T>>(
        context: context,
        builder: (_) => OptionSelectorDialog<T>(
              optionLabel: optionLabel,
              options: allOptions,
              title: title,
              initialValues: initialOptions,
            ));
    if (newOptions != null &&
        newOptions is List<T> &&
        onOptionsChanged != null) {
      onOptionsChanged(newOptions);
    }
  }
}
