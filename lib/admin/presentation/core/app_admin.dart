import 'package:fitnick/admin/presentation/screen/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class AdminApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
