import 'package:fitnick/admin/application/cubit/tab_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabCubit, TabState>(
      builder: (_, state) => Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton.extended(
              onPressed: () {},
              label: Text(
                  state.currentTabIndex == 0 ? "Add Workout" : "Add Exercise")),
          bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: state.currentTabIndex,
              onTap: (value) => _onChangedTab(context, value),
              items: state.tabs
                  .map((tab) => BottomNavigationBarItem(
                      title: Text(tab.title), icon: Icon(tab.icon)))
                  .toList()),
          appBar: AppBar(title: Text("Fitnick Admin")),
          body: Center(child: Text('asdf'))),
    );
  }

  void _onChangedTab(BuildContext context, int tabIndex) {
    BlocProvider.of<TabCubit>(context).changeTab(tabIndex);
  }
}
