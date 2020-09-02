import 'package:flutter/material.dart';

class DeleteChip extends StatelessWidget {
  final String label;
  final void Function() onDelete;
  final Color color;

  const DeleteChip(
      {Key key, @required this.label, @required this.onDelete, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final actualColor = color ?? Theme.of(context).primaryColor;
    return Chip(
      deleteIconColor: Colors.red,
      backgroundColor: actualColor.withOpacity(0.05),
      label: Text(label, style: TextStyle(color: actualColor)),
      onDeleted: onDelete,
    );
  }
}
