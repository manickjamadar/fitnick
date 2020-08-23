import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/application/exercise/filtered_exercise/filtered_exercise_bloc.dart';
import 'package:fitnick/application/music/music_hub/music_hub_cubit.dart';
import 'package:fitnick/fitnick_icons.dart';
import 'package:fitnick/presentation/core/my_icons.dart';
import 'package:fitnick/presentation/core/widgets/balance_view.dart';
import 'package:fitnick/presentation/screens/home/tabs/exercise_tab.dart';
import 'package:fitnick/presentation/screens/home/tabs/progresstion_tab.dart';
import 'package:fitnick/presentation/screens/home/tabs/workout_tab.dart';
import 'package:fitnick/presentation/screens/home/widgets/add_buttons.dart';
import 'package:fitnick/presentation/screens/music_center_screen/music_center_screen.dart';
import 'package:fitnick/presentation/screens/store_screen/store_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  int currentTab = 0;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.detached) {
      await BlocProvider.of<MusicHubCubit>(context).stop();
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        leading: Icon(FitnickIcons.logo, color: Theme.of(context).primaryColor),
        title: Text(
          "Workouts",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(FitnickIcons.store, color: Colors.green),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              FitnickIcons.music,
              size: 20,
              color: Colors.red,
            ),
            onPressed: () => _onHeadSetTap(context),
          )
        ],
      ),
      floatingActionButton: AddButtons(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: currentTab,
        showSelectedLabels: false,
        showUnselectedLabels: false,
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
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: IndexedStack(
          index: currentTab,
          children: <Widget>[
            WorkoutTab(),
            BlocProvider<FilteredExerciseBloc>(
              create: (_) => FilteredExerciseBloc(
                  exerciseHubBloc: BlocProvider.of<ExerciseHubBloc>(context)),
              child: ExerciseTab(),
            ),
            ProgressionTab()
          ],
        ),
      ),
    );
  }

  void _onHeadSetTap(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => MusicCenterScreen.generateRoute(),
        ));
  }

  void _onCoinIconTap(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => StoreScreen.generateRoute(context),
        ));
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() async {
    WidgetsBinding.instance.removeObserver(this);
    await BlocProvider.of<MusicHubCubit>(context).stop();
    super.dispose();
  }
}
