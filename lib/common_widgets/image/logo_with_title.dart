import 'package:durotto/config/style/text_style.dart';
import 'package:flutter/material.dart';

class LogoWithTitle extends StatelessWidget {
  final String? title;
  final String? logoPath;

  const LogoWithTitle({this.title, this.logoPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 50,
            backgroundImage:
                AssetImage("assets/icons/${logoPath ?? 'logo.jpg'}"),
          ),
        ),
        Text(
          title ?? '',
          style: kTitleTextStyle,
        ),
      ],
    );
  }
}
