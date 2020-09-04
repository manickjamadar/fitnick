import 'package:fitnick/presentation/core/widgets/alert_title.dart';
import 'package:fitnick/presentation/core/widgets/done_action_buttons.dart';
import 'package:fitnick/presentation/core/widgets/option_selector.dart';
import 'package:flutter/material.dart';

class OptionSelectorDialog<T> extends StatefulWidget {
  final String title;
  final List<T> options;
  final String Function(T option) optionLabel;
  final List<T> initialValues;

  const OptionSelectorDialog({
    Key key,
    @required this.title,
    @required this.options,
    @required this.optionLabel,
    this.initialValues = const [],
  }) : super(key: key);

  @override
  _OptionSelectorDialogState<T> createState() =>
      _OptionSelectorDialogState<T>();
}

class _OptionSelectorDialogState<T> extends State<OptionSelectorDialog<T>> {
  List<T> _selectedOptions;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: AlertTitle(title: widget.title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: SingleChildScrollView(
              child: OptionSelector<T>(
                optionLabel: widget.optionLabel,
                options: widget.options,
                initialValues: _selectedOptions,
                onSelect: (newOptions) => _onOptionSelect(newOptions),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DoneActionButtons(
            onCancel: () => _onCancel(context),
            onDone: () => _onDone(context),
          )
        ],
      ),
    );
  }

  void _onOptionSelect(List<T> newOptions) {
    setState(() {
      _selectedOptions = [...newOptions];
    });
  }

  void _onCancel(BuildContext context) {
    Navigator.pop(context);
  }

  void _onDone(BuildContext context) {
    Navigator.pop(context, _selectedOptions);
  }

  @override
  void initState() {
    super.initState();
    _selectedOptions = [...widget.initialValues];
  }
}
