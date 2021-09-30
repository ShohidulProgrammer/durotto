import 'package:durotto/features/login/presentation/ui/login_screen.dart';
import 'package:durotto/features/root/root_page.dart';
import 'package:flutter/material.dart';

import 'router_path_const.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute<Widget>(builder: (_) => RootLand());
      case signInPageRoute:
        return MaterialPageRoute<Widget>(builder: (_) => SignInScreen());

      default:
        return MaterialPageRoute<Widget>(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }

  ///Singleton factory
  static final MyRouter _instance = MyRouter._internal();

  factory MyRouter() {
    return _instance;
  }

  MyRouter._internal();
}
