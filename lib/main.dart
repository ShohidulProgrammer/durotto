import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'my_app.dart';

Future<void> main() async {
  // setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(MyApp());
}
