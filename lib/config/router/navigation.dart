import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<Object?> pushNameRoute(String route, {dynamic arguments}) async {
  navigatorKey.currentState?.pushNamed(route, arguments: arguments);
}

Future<Object?> popRoute() async {
  navigatorKey.currentState?.pop();
}

Future<Object?>? popAndPushNamed(String route, {Object? arguments}) =>
    navigatorKey.currentState?.popAndPushNamed(route, arguments: arguments);

Future<Object?>? pushReplacementNamed(String route, {Object? arguments}) =>
    navigatorKey.currentState
        ?.pushReplacementNamed(route, arguments: arguments);

Future<Object?>? pushNamedAndRemoveUntil(String route, {Object? arguments}) =>
    navigatorKey.currentState
        ?.pushNamedAndRemoveUntil(route, (Route<dynamic> route) => false);
