import 'package:fitnick/domain/page_tab/models/page_tab.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final void Function(int) onSelect;
  final int currentIndex;
  final List<PageTab> tabs;

  const NavBar(
      {Key key,
      @required this.onSelect,
      @required this.currentIndex,
      @required this.tabs})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: onSelect,
      items: tabs
          .map((pageTab) => BottomNavigationBarItem(
              icon: Icon(pageTab.iconData), title: Text(pageTab.title)))
          .toList(),
    );
  }
}
