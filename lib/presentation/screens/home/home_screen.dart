import 'package:fitnick/presentation/core/my_icons.dart';
import 'package:fitnick/presentation/screens/home/tabs/exercise_tab.dart';
import 'package:fitnick/presentation/screens/home/tabs/progresstion_tab.dart';
import 'package:fitnick/presentation/screens/home/tabs/workout_tab.dart';
import 'package:fitnick/presentation/screens/home/widgets/add_buttons.dart';
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
      floatingActionButton: AddButtons(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        onTap: (i) => setState(() {
          currentTab = i;
        }),
        items: [
          BottomNavigationBarItem(
              icon: Icon(MyIcons.workout), title: Text("Workout")),
          BottomNavigationBarItem(
              icon: Icon(MyIcons.exercise), title: Text("Exercise")),
          BottomNavigationBarItem(
              icon: Icon(MyIcons.progression), title: Text("Progression")),
        ],
      ),
      body: IndexedStack(
        index: currentTab,
        children: <Widget>[WorkoutTab(), ExerciseTab(), ProgressionTab()],
      ),
    );
  }
}
