import 'package:flutter/material.dart';

import 'config/router/navigation.dart';
import 'config/router/router.dart';
import 'config/router/router_path_const.dart';
import 'config/style/theams/app_theam.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Place Distance: Durotto',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: initialRoute,
      onGenerateRoute: MyRouter.generateRoute,
      navigatorKey: navigatorKey,
    );
  }
}
