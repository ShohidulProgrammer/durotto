import 'package:durotto/common_widgets/builder_state/stream_observer.dart';
import 'package:durotto/common_widgets/dialog/toast.dart';
import 'package:durotto/features/home/home_screen.dart';
import 'package:durotto/features/login/presentation/ui/login_screen.dart';
import 'package:durotto/services/firebase/auth/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RootLand extends StatefulWidget {
  @override
  _RootLandState createState() => _RootLandState();
}

class _RootLandState extends State<RootLand> {
  @override
  Widget build(BuildContext context) {
    return StreamObserver<User?>(
      stream: authService.authStateChanges(),
      onSuccessHasData: (BuildContext context, AsyncSnapshot<User?> snapshot) =>
          snapshot.data?.uid != null ? HomeScreen() : SignInScreen(),
      onSuccessNoData: (_, __) => SignInScreen(),
      onError: (_, AsyncSnapshot<User?> snapshot) {
        appToast(msg: 'Something Wrong! Please! SignIn Again');
        debugPrint('RootLand | error: ${snapshot.error}');
        return SignInScreen();
      },
    );
  }
}
