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
    // return BottomNavigationBar(
    //   backgroundColor: Colors.white,
    //   currentIndex: currentIndex,
    //   showSelectedLabels: false,
    //   showUnselectedLabels: false,
    //   onTap: onSelect,
    //   items: tabs
    //       .map((pageTab) => BottomNavigationBarItem(
    //           icon: Icon(pageTab.iconData), title: Text(pageTab.title)))
    //       .toList(),
    // );
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
              child: IconButton(
                  color: Colors.grey,
                  icon: buildIcon(context, tabs[0]),
                  onPressed: () => onSelect(0))),
          Expanded(child: Text("")),
          Expanded(
              child: IconButton(
                  icon: buildIcon(context, tabs[1]),
                  onPressed: () => onSelect(1))),
        ],
      ),
    );
  }

  Widget buildIcon(BuildContext context, PageTab tab) {
    return Icon(tab.iconData,
        color: tab.isActive ? Theme.of(context).primaryColor : Colors.grey);
  }
}
