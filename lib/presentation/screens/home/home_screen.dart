import 'package:dartz/dartz.dart' as dartz;
import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/application/exercise/filtered_exercise/filtered_exercise_bloc.dart';
import 'package:fitnick/application/music/music_hub/music_hub_cubit.dart';
import 'package:fitnick/application/tab/tab_cubit.dart';
import 'package:fitnick/domain/page_tab/models/page_tab.dart';
import 'package:fitnick/fitnick_icons.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/screens/active_workout_form/active_workout_form_screen.dart';
import 'package:fitnick/presentation/screens/exercise_form/exercise_form_screen.dart';
import 'package:fitnick/presentation/screens/home/tabs/exercise_tab.dart';
import 'package:fitnick/presentation/screens/home/tabs/progresstion_tab.dart';
import 'package:fitnick/presentation/screens/home/tabs/workout_tab.dart';
import 'package:fitnick/presentation/screens/music_center_screen/music_center_screen.dart';
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
    return BlocBuilder<TabCubit, TabState>(builder: (_, state) {
      final PageTab currentPageTab = state.tabs[state.currentTabIndex];
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          textTheme: Theme.of(context).textTheme,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          leading:
              Icon(FitnickIcons.logo, color: Theme.of(context).primaryColor),
          title: Text(currentPageTab.title,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(fontWeight: FontWeight.bold)),
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
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            if (state.currentTabIndex == 0) {
              _onAddWorkout(context);
            } else {
              _onAddExercise(context);
            }
          },
          icon: Icon(Icons.add, color: Colors.white),
          label: Text(
              state.currentTabIndex == 0 ? "Add Workout" : "Add Exercise",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white)),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: state.currentTabIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (newTabIndex) => _onTabSelect(context, newTabIndex),
          items: state.tabs
              .map((pageTab) => BottomNavigationBarItem(
                  icon: Icon(pageTab.iconData), title: Text(pageTab.title)))
              .toList(),
        ),
        body: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: PageView(
            controller: state.pageController,
            onPageChanged: (newPageIndex) {
              if (state.currentTabIndex != newPageIndex) {
                _onTabSelect(context, newPageIndex);
              }
            },
            children: [
              WorkoutTab(),
              BlocProvider<FilteredExerciseBloc>(
                create: (_) => FilteredExerciseBloc(
                    exerciseHubBloc: BlocProvider.of<ExerciseHubBloc>(context)),
                child: ExerciseTab(),
              ),
            ],
          ),
        ),
      );
    });
  }

  void _onHeadSetTap(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => MusicCenterScreen.generateRoute(),
        ));
  }

  void _onTabSelect(BuildContext context, int newTabIndex) {
    BlocProvider.of<TabCubit>(context).changeTab(newTabIndex);
  }

  void _onAddExercise(BuildContext context) async {
    String message = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) =>
                ExerciseFormScreen.generateRoute(context, dartz.none())));
    if (message != null) {
      showMessage(context, message: message, type: SuccessMessage());
    }
  }

  void _onAddWorkout(BuildContext context) async {
    String message = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) =>
                ActiveWorkoutFormScreen.generateRoute(context, dartz.none())));
    if (message != null) {
      showMessage(context, message: message, type: SuccessMessage());
    }
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
