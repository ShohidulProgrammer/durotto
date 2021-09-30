import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../firebase/firebase_instance.dart';

class GoogleAuthService {
  static GoogleAuthService? _instance;

  GoogleAuthService._();

  static GoogleAuthService get getInstance =>
      _instance ??= GoogleAuthService._();

  // final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseAuth _firebaseAuth = firebaseService.getAuthInstance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<User?> signInWithGoogle() async {
    try {
      await Firebase.initializeApp();

      // Trigger the authentication flow
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        // Obtain the auth details from the request
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        // Create a new credential
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        // sign-In with credential
        final UserCredential authResult =
            await _firebaseAuth.signInWithCredential(credential);
        final User? user = authResult.user;

        if (user != null) {
          assert(!user.isAnonymous);

          final User? currentUser = _firebaseAuth.currentUser;
          assert(currentUser != null && user.uid == currentUser.uid);

          print('signInWithGoogle succeeded: $user');

          return user;
        }
      }

      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> signOutGoogle() async {
    try {
      bool isSignedIn = await googleSignIn.isSignedIn();
      if (isSignedIn) {
        await googleSignIn.signOut();
        print("signOutGoogle| User Signed Out");
      }
    } catch (e) {
      print('google sign out error: $e ');
    }
  }
}

final googleAuthService = GoogleAuthService.getInstance;
