import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/application/exercise/filtered_exercise/filtered_exercise_bloc.dart';
import 'package:fitnick/application/music/music_hub/music_hub_cubit.dart';
import 'package:fitnick/application/tab/tab_cubit.dart';
import 'package:fitnick/domain/page_tab/models/page_tab.dart';
import 'package:fitnick/presentation/screens/home/home_action_button.dart';
import 'package:fitnick/presentation/screens/home/tabs/exercise_tab.dart';
import 'package:fitnick/presentation/screens/home/tabs/workout_tab.dart';
import 'package:fitnick/presentation/screens/home/widgets/header.dart';
import 'package:fitnick/presentation/screens/home/widgets/nav_bar.dart';
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
        appBar: Header(title: currentPageTab.title),
        floatingActionButton: HomeActionButton(
          currentIndex: state.currentTabIndex,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: NavBar(
          onSelect: (newTabIndex) => _onTabSelect(context, newTabIndex),
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

  void _onTabSelect(BuildContext context, int newTabIndex) {
    BlocProvider.of<TabCubit>(context).changeTab(newTabIndex);
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
