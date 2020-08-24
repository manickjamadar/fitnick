import 'package:fitnick/presentation/core/fitnick_actions/fitnick_actions.dart';
import 'package:flutter/material.dart';

import '../../../../fitnick_icons.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const Header({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(FitnickIcons.logo, color: Theme.of(context).primaryColor),
      title: Text(title),
      actions: [
        IconButton(
          icon: Icon(FitnickIcons.store, color: Colors.green),
          onPressed: () => FitnickActions(context).goStore(),
        ),
        IconButton(
          icon: Icon(
            FitnickIcons.music,
            size: 20,
            color: Colors.red,
          ),
          onPressed: () => FitnickActions(context).goMusicCenter(),
        )
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
