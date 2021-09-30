import 'package:durotto/config/style/text_style.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  final String? waitingTxt;

  const LoadingScreen({this.waitingTxt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: waitingTxt != null
            ? Text(waitingTxt!, style: kSmallTitleBoldTextStyle)
            : const CircularProgressIndicator(),
      ),
    );
  }
}
