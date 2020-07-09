import 'package:fitnick/presentation/screens/home/tabs/exercise_tab.dart';
import 'package:fitnick/presentation/screens/home/tabs/progresstion_tab.dart';
import 'package:fitnick/presentation/screens/home/tabs/routine_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FitNick"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        onTap: (i) => setState(() {
          currentTab = i;
        }),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.group_work), title: Text("Routine")),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center), title: Text("Exercise")),
          BottomNavigationBarItem(
              icon: Icon(Icons.trending_up), title: Text("Progression")),
        ],
      ),
      body: IndexedStack(
        index: currentTab,
        children: <Widget>[RoutineTab(), ExerciseTab(), ProgressionTab()],
      ),
    );
  }
}
