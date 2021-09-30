import 'package:durotto/common_widgets/button/app_raised_button.dart';
import 'package:durotto/common_widgets/image/logo_with_title.dart';
import 'package:durotto/services/firebase/auth/google_services.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height / 12),
            const LogoWithTitle(title: 'Welcome to Durotto'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Please! sign-in with your Gmail account'),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 9),
            AppButton(
              logoPath: 'assets/icons/gmail_logo.png',
              title: 'Sign in with Google',
              onPressed: () => googleAuthService.signInWithGoogle(),
            ),
          ],
        ),
      ),
    ));
  }
}
