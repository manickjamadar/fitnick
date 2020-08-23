import 'package:flutter/material.dart';

import '../styles.dart';

class SearchBar extends StatefulWidget {
  final void Function(String value) onChanged;
  final String value;
  const SearchBar({Key key, @required this.value, this.onChanged})
      : super(key: key);
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController controller;
  bool shouldShowClear = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Theme.of(context).primaryColor,
        // padding: EdgeInsets.all(20),
        child: TextFormField(
      controller: controller,
      onChanged: (value) {
        setState(() {
          shouldShowClear = value.isNotEmpty;
        });
        if (widget.onChanged != null) {
          widget.onChanged(value);
        }
      },
      style: FitnickTheme.inputTextStyle(context),
      decoration: FitnickTheme.inputDecoration.copyWith(
        suffixIcon: shouldShowClear
            ? IconButton(
                icon: Icon(
                  Icons.cancel,
                  color: Colors.red,
                ),
                onPressed: _onClear,
              )
            : null,
        hintText: "Search",
      ),
    ));
  }

  void _onClear() {
    controller.clear();
    setState(() {
      shouldShowClear = false;
    });
    if (widget.onChanged != null) {
      widget.onChanged("");
    }
  }

  @override
  void initState() {
    controller = TextEditingController(text: widget.value);
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
