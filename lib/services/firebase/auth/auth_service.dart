import 'package:durotto/common_widgets/dialog/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../firebase_instance.dart';
import 'google_services.dart';

class AuthService {
  static AuthService? _instance;

  AuthService._();

  static AuthService get getInstance => _instance ??= AuthService._();

  final FirebaseAuth _firebaseAuth = firebaseService.getAuthInstance;

  User? getCurrentUser() => _firebaseAuth.currentUser;

  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();

  Future<void> reloadCurrentUser() async {
    try {
      if (_firebaseAuth.currentUser != null) {
        return await _firebaseAuth.currentUser?.reload().catchError((onError) {
          // debugPrint('reloadCurrentUser | onError:${onError.toString()}');
          if (onError.code == 'unknown') {
            appToast(msg: 'No internet connection');
          } else {
            final String? error = onError?.toString().substring(
                onError.toString().indexOf('A') + 1,
                onError.toString().indexOf('('));
            appToast(msg: error.toString());
          }
        });
      }
    } catch (e) {
      debugPrint('reloadCurrentUser | error:${e.toString()}');
    }
  }

  Future<User?> signInUser() async {
    try {
      return googleAuthService.signInWithGoogle();
    } catch (e) {
      debugPrint('signOutUser error: $e');
      appToast(msg: 'Failed to Log-in');
    }
  }

  Future<void> signOutUser({bool enableMsg = true}) async {
    try {
      googleAuthService.signOutGoogle();
      return await reloadCurrentUser();
    } catch (e) {
      debugPrint('signOutUser error: $e');
      appToast(msg: 'Failed to LogOut');
    }
  }
}

final AuthService authService = AuthService.getInstance;
