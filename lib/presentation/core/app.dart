import 'package:dartz/dartz.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/screens/exercise_form/exercise_form_screen.dart';
import 'package:fitnick/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
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
