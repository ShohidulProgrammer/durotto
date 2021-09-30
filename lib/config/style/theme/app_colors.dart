import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor primaryColor = const MaterialColor(
    0xff515179,
    // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xfff2f6ff),
      100: Color(0xfff2f6ff),
      200: Color(0xfff2f6ff),
      300: Color(0xffeeeff6),
      400: Color(0xffeeeff6),
      500: Color(0xff515179),
      600: Color(0xff515179),
      700: Color(0xff33334F),
      800: Color(0xff33334F),
      900: Color(0xff242424),
    },
  );
  static const MaterialColor accentColor = MaterialColor(
    0xfffe5723,
    // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      100: Color(0x33fe5723),
      200: Color(0xfffe5723),
      300: Color(0xfffe5723),
      400: Color(0xfffe5723),
      500: Color(0xfffe5723),
      600: Color(0xfffe5723),
      700: Color(0xfffe5723),
      800: Color(0xfffe5723),
      900: Color(0xfffe5723),
    },
  );

  static Color backgroundColor = Colors.blueGrey.shade100;
  static Color accent = const Color(0xfffe5723);
  static Color positiveColor = Colors.green;
  static Color negativeColor = Colors.red;
  static Color primaryDark = Color(0xff33334f);
} //
