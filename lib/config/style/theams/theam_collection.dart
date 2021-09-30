import 'package:flutter/material.dart';

// App color code:
// Yellow: FFC500, Blue: 000090, white

class CollectionTheme {
  ///Get collection theme
  static ThemeData getCollectionTheme(
      {String theme = "primaryLight", String font = "Raleway"}) {
    return ThemeData(
      primarySwatch: const MaterialColor(4287870896, <int, Color>{
        50: Color(0xFFE3F2FD),
        100: Color(0xFFBBDEFB),
        200: Color(0xFF90CAF9),
        300: Color(0xFF64B5F6),
        400: Color(0xFF42A5F5),
        500: Color(0xff2196f3),
        600: Color(0xFF1E88E5),
        700: Color(0xFF1976D2),
        800: Color(0xFF1565C0),
        900: Color(0xFF0D47A1)
      }),
      fontFamily: font,
      brightness: Brightness.light,
      primaryColor: Colors.blue[700],
      primaryColorBrightness: Brightness.dark,
      primaryColorLight: const Color(0xff448aff),
      primaryColorDark: const Color(0xff2979ff),
      accentColor: Colors.blue[900],
      // use for copy pest text color
      accentColorBrightness: Brightness.dark,
      canvasColor: const Color(0xfffafafa),
      scaffoldBackgroundColor: const Color(0xfffafafa),
      bottomAppBarColor: const Color(0xffffffff),
      cardColor: const Color(0xffffffff),
      dividerColor: const Color(0x1FFFFFFF),
      highlightColor: const Color(0x66bcbcbc),
      splashColor: const Color(0x66c8c8c8),
      selectedRowColor: const Color(0xfff5f5f5),
      unselectedWidgetColor: const Color(0x8a000000),
      disabledColor: const Color(0xffd1d1d1),
      buttonColor: const Color(0xff146EB4),

      toggleableActiveColor: const Color(0xff5380a3),
      secondaryHeaderColor: const Color(0xfff5fbff),

      backgroundColor: const Color(0xfff2f4f7),
      dialogBackgroundColor: const Color(0xffffffff),
      indicatorColor: const Color(0xff4A90A4),
      hintColor: Colors.blueGrey,
      errorColor: const Color(0xffff0000),
      iconTheme: IconThemeData(
        color: Colors.blue[800],
      ),

      colorScheme: ColorScheme(
        primary: Colors.blue.shade900,
        onSurface: Colors.blue,
        background: const Color(0xfff2f4f7),
        // secondary: const Color(0xfffcd42c),
        secondary: Colors.blue.shade900,
        onPrimary: Colors.blue,
        surface: const Color(0xfffafafa),
        primaryVariant: Colors.blue,
        onBackground: const Color(0xfffafafa),
        onError: Colors.redAccent,
        brightness: Brightness.light,
        error: const Color(0xffff0000),
        secondaryVariant: const Color(0xfff5fbff),
        onSecondary: const Color(0xffffffff),
      ),
      appBarTheme: const AppBarTheme(brightness: Brightness.dark),

      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.accent,
        height: 48,
        padding: const EdgeInsets.only(left: 16, right: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        // buttonColor: const Color(0xfffcd42c),
        buttonColor: const Color(0xff335EFF),
        disabledColor: Colors.blueGrey.shade200,
        highlightColor: const Color(0xffebf1ff),
        splashColor: const Color(0xfff7f9fc),
        focusColor: const Color(0xffedf1f7),
        hoverColor: const Color(0xffdfe2e8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(60, 40),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          onPrimary: const Color(0xfff7f9fc),
          // primary: const Color(0xfffcd42c),
          primary: const Color(0xff335EFF),
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
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.only(
          top: 12,
          bottom: 12,
          left: 15,
          right: 15,
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: const Color(0xfff7f9fc),
        brightness: Brightness.light,
        deleteIconColor: const Color(0xde000000),
        disabledColor: const Color(0xffedf1f7),
        labelPadding: const EdgeInsets.only(left: 8, right: 8),
        labelStyle: TextStyle(
          fontSize: 12,
          fontFamily: font,
          color: Colors.blueGrey[900],
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        padding: const EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
        secondaryLabelStyle: TextStyle(
          fontSize: 12,
          fontFamily: font,
          color: Colors.blueGrey[600],
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        secondarySelectedColor: const Color(0xffedf1f7),
        selectedColor: const Color(0xffedf1f7),
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.blueGrey[900]!,
            // color: Color(0xff000000),
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
      dialogTheme: const DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
      ),

      sliderTheme: const SliderThemeData(
        valueIndicatorTextStyle: TextStyle(color: Colors.white),
        valueIndicatorColor: Colors.indigo,
        // This is what you are asking for
        inactiveTrackColor: Color(0xFF8D8E98),
        // Custom Gray Color
        activeTrackColor: Colors.white,
        thumbColor: Colors.red,

        overlayColor: Color(0x29EB1555),
        // Custom Thumb overlay Color
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),

        // thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
      ),

      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Color(0xff4285f4),
        selectionColor: Color(0xffc3d2db),
        selectionHandleColor: Colors.blue,
      ),
    );
  }

  ///Singleton factory
  static final CollectionTheme _instance = CollectionTheme._internal();

  factory CollectionTheme() {
    return _instance;
  }

  CollectionTheme._internal();
}
