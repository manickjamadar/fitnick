import 'package:fitnick/fitnick_icons.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:flutter/material.dart';
import "../../core/helpers/string_extension.dart";

class ActorDialog extends StatelessWidget {
  final String title;
  final void Function() onEdit;
  final void Function() onDelete;

  const ActorDialog(
      {Key key,
      @required this.title,
      @required this.onEdit,
      @required this.onDelete})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      title: Text(
        title,
        style: FitnickTextTheme(context).heading,
        textAlign: TextAlign.center,
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildActionButton(context,
              label: "Edit",
              iconData: FitnickIcons.edit,
              color: Colors.blue, onPressed: () {
            Navigator.pop(context);
            if (onEdit != null) {
              onEdit();
            }
          }),
          buildActionButton(context,
              label: "Delete",
              iconData: FitnickIcons.delete,
              color: Colors.red, onPressed: () {
            Navigator.pop(context);
            if (onEdit != null) {
              onDelete();
            }
          }),
        ],
      ),
    );
  }

  Widget buildActionButton(BuildContext context,
      {@required String label,
      @required IconData iconData,
      @required Color color,
      @required void Function() onPressed}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          backgroundColor: color,
          child: Icon(iconData, color: Colors.white),
          onPressed: onPressed,
        ),
        SizedBox(
          height: 12,
        ),
        Text(label,
            style: FitnickTextTheme(context)
                .heading2
                .copyWith(color: Colors.grey[700]))
      ],
    );
  }
}
