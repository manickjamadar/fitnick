import 'package:flutter/material.dart';

class FitnickTheme {
  static const double exerciseThumbnailSize = 86;
  static const double aspectRatio = 16 / 9;
  static const double radius = 10.0;
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
  static TextStyle inputTextStyle(BuildContext context) => Theme.of(context)
      .textTheme
      .bodyText1
      .copyWith(fontWeight: FontWeight.w500);
  static InputDecoration inputDecoration = InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      fillColor: Colors.grey[200],
      filled: true,
      enabled: true,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.grey[200])));
}

class FitnickTextTheme {
  final BuildContext context;

  FitnickTextTheme(this.context);

  TextStyle get heading => Theme.of(context)
      .textTheme
      .bodyText1
      .copyWith(fontWeight: FontWeight.bold, fontSize: 15);
  TextStyle get heading2 => Theme.of(context)
      .textTheme
      .bodyText1
      .copyWith(fontWeight: FontWeight.bold);
  TextStyle get body1 => Theme.of(context)
      .textTheme
      .bodyText1
      .copyWith(fontWeight: FontWeight.w500);
  TextStyle get button => Theme.of(context)
      .textTheme
      .bodyText1
      .copyWith(fontWeight: FontWeight.w600, fontSize: 13, letterSpacing: 1.2);
  TextStyle get smallButton => Theme.of(context)
      .textTheme
      .bodyText1
      .copyWith(fontWeight: FontWeight.bold, fontSize: 11);
  TextStyle get small => Theme.of(context).textTheme.caption;
  TextStyle get title => Theme.of(context)
      .textTheme
      .bodyText1
      .copyWith(fontWeight: FontWeight.bold);
  TextStyle get bigTitle => Theme.of(context)
      .textTheme
      .headline6
      .copyWith(fontWeight: FontWeight.bold);
}
