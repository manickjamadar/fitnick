import 'package:dartz/dartz.dart';
import 'package:fitnick/application/tab/tab_cubit.dart';
import 'package:fitnick/domain/page_tab/models/page_tab.dart';
import 'package:fitnick/fitnick_icons.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/screens/exercise_form/exercise_form_screen.dart';
import 'package:fitnick/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
          create: (_) => TabCubit()
            ..init(tabs: [
              PageTab(
                  iconData: FitnickIcons.workout,
                  title: "Workouts",
                  isActive: true),
              PageTab(iconData: FitnickIcons.exercise, title: "Exercises"),
            ]),
          child: HomeScreen()),
      theme: ThemeData(
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
          primaryColor: FitnickTheme.primaryColor,
          primarySwatch: FitnickTheme.primarySwatch,
          accentColor: FitnickTheme.accentColor),
      routes: {
        ExerciseFormScreen.routeName: (_) =>
            ExerciseFormScreen.generateRoute(context, none())
      },
    );
  }
}
