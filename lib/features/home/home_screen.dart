import 'package:durotto/common_widgets/button/app_raised_button.dart';
import 'package:durotto/services/firebase/auth/google_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('home page'),
          AppButton(
            title: 'Log out',
            onPressed: () => googleAuthService.signOutGoogle(),
          ),
        ],
      ),
    );
  }
}
