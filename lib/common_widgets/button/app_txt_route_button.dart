import 'package:durotto/config/router/navigation.dart';
import 'package:flutter/material.dart';

class AppTxtRouteButton extends StatelessWidget {
  final String title;
  final String btnText;
  final String route;
  final Color btnTextColor;
  final bool pop;

  const AppTxtRouteButton(
      {this.title = '',
      this.btnText = '',
      this.btnTextColor = Colors.blue,
      this.route = 'Invalid Route',
      this.pop = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(title),
        TextButton(
          onPressed: () =>
              pop ? pushNamedAndRemoveUntil(route) : pushNameRoute(route),
          child: Text(
            btnText,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: btnTextColor,
                fontSize: 16.0),
          ),
        ),
      ],
    );
  }
}
