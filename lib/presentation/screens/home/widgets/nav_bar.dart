import 'package:fitnick/application/tab/tab_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavBar extends StatelessWidget {
  final void Function(int) onSelect;

  const NavBar({Key key, @required this.onSelect}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabCubit, TabState>(builder: (_, state) {
      return BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: state.currentTabIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onSelect,
        items: state.tabs
            .map((pageTab) => BottomNavigationBarItem(
                icon: Icon(pageTab.iconData), title: Text(pageTab.title)))
            .toList(),
      );
    });
  }
}
