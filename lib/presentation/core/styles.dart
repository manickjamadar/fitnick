import 'package:flutter/material.dart';

class FitnickTheme {
  static const int _primaryColorValue = 0xFFFF6433;
  static const Color primaryColor = const Color(_primaryColorValue);
  static const MaterialColor primarySwatch =
      const MaterialColor(_primaryColorValue, <int, Color>{
    50: Color(0xFFFFECE7),
    100: Color(0xFFFFD1C2),
    200: Color(0xFFFFB299),
    300: Color(0xFFFF9370),
    400: Color(0xFFFF7B52),
    500: Color(_primaryColorValue),
    600: Color(0xFFFF5C2E),
    700: Color(0xFFFF5227),
    800: Color(0xFFFF4820),
    900: Color(0xFFFF3614),
  });

  static const Color accentColor = const Color(0xFF36C75E);
}