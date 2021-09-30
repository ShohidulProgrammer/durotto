import 'package:flutter/material.dart';

import 'theam_collection.dart';
import 'theam_model.dart';

enum DarkOption { dynamic, alwaysOn, alwaysOff }

class AppTheme {
  ///Default Theme
  static ThemeModel currentTheme = ThemeModel.fromJson(<String, dynamic>{
    "name": "default",
    "color": const Color(0xff146EB4),
    "light": "primaryLight",
    "dark": "primaryDark",
  });

  static ThemeData lightTheme = CollectionTheme.getCollectionTheme(
    theme: currentTheme.lightTheme,
  );

  static ThemeData darkTheme = CollectionTheme.getCollectionTheme(
    theme: currentTheme.darkTheme,
  );

  ///Singleton factory
  static final AppTheme _instance = AppTheme._internal();

  factory AppTheme() {
    return _instance;
  }

  AppTheme._internal();
}
