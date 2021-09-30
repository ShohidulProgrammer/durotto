import 'package:flutter/material.dart';

// App color code:
// Yellow: FFC500, Blue: 000090, white

class CollectionTheme {
  ///Get collection theme
  static ThemeData getCollectionTheme(
      {String theme = "primaryLight", String font = "Raleway"}) {
    return ThemeData(
      primarySwatch: const MaterialColor(0xff515179, <int, Color>{
        50: Color(0xfff2f6ff),
        100: Color(0xfff2f6ff),
        200: Color(0xfff2f6ff),
        300: Color(0xfff2f6ff),
        400: Color(0xfff2f6ff),
        500: Color(0xff515179),
        600: Color(0xff515179),
        700: Color(0xff33334F),
        800: Color(0xff33334F),
        900: Color(0xff242424),
      }),
      accentColor: const MaterialColor(
        0xfffe5723,
        <int, Color>{
          100: Color(0xfffe5723),
          200: Color(0xfffe5723),
          300: Color(0xfffe5723),
          400: Color(0xfffe5723),
          500: Color(0xfffe5723),
          600: Color(0xfffe5723),
          700: Color(0xfffe5723),
          800: Color(0xfffe5723),
          900: Color(0xfffe5723),
        },
      ),

      // backgroundColor: Colors.blueGrey.shade100,
      scaffoldBackgroundColor: Colors.white,

      fontFamily: font,
      brightness: Brightness.light,
      canvasColor: const Color(0xff33334F),
      // colorScheme: ColorScheme(
      //   primary: Colors.blue.shade900,
      //   onSurface: Colors.blue,
      //   background: const Color(0xfff2f4f7),
      //   secondary: Colors.blue.shade900,
      //   onPrimary: Colors.blue,
      //   surface: const Color(0xfffafafa),
      //   primaryVariant: Colors.blue,
      //   onBackground: const Color(0xfffafafa),
      //   onError: Colors.redAccent,
      //   brightness: Brightness.light,
      //   error: const Color(0xffff0000),
      //   secondaryVariant: const Color(0xfff5fbff),
      //   onSecondary: const Color(0xffffffff),
      // ),

      // buttons theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(100, 50),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          onPrimary: const Color(0xfff7f9fc),
          primary: const Color(0xff33334F),
          shadowColor: const Color(0xffebf1ff),
          onSurface: Colors.black,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              wordSpacing: 2,
              letterSpacing: 2),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(color: Colors.blueGrey),
        errorStyle: const TextStyle(fontSize: 10.0, color: Color(0xfffe5723)),
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Color(0xff515179),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            width: 3,
            color: Color(0xff515179),
          ),
        ),
      ),

      // textSelectionTheme: const TextSelectionThemeData(
      //   cursorColor: Color(0xff4285f4),
      //   selectionColor: Color(0xffc3d2db),
      //   selectionHandleColor: Colors.blue,
      // ),

      // primaryColorBrightness: Brightness.dark,
      // primaryColorLight: const Color(0xff448aff),
      // primaryColorDark: const Color(0xff2979ff),
      //
      // // use for copy pest text color
      // accentColorBrightness: Brightness.dark,

      // bottomAppBarColor: const Color(0xffffffff),
      // cardColor: const Color(0xffffffff),
      // dividerColor: const Color(0x1FFFFFFF),
      // highlightColor: const Color(0x66bcbcbc),
      // splashColor: const Color(0x66c8c8c8),
      // selectedRowColor: const Color(0xfff5f5f5),
      // unselectedWidgetColor: const Color(0x8a000000),
      // disabledColor: const Color(0xffd1d1d1),
      // buttonColor: const Color(0xff146EB4),

      // toggleableActiveColor: const Color(0xff5380a3),
      // secondaryHeaderColor: const Color(0xfff5fbff),
      // dialogBackgroundColor: const Color(0xffffffff),
      // indicatorColor: const Color(0xff4A90A4),
      // hintColor: Colors.blueGrey,
      // errorColor: const Color(0xffff0000),
      // iconTheme: IconThemeData(
      //   color: Colors.blue[800],
      // ),
      //

      // appBarTheme: const AppBarTheme(brightness: Brightness.dark),
      //
    );
  }

  ///Singleton factory
  static final CollectionTheme _instance = CollectionTheme._internal();

  factory CollectionTheme() {
    return _instance;
  }

  CollectionTheme._internal();
}
