import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseInstance {
  static FirebaseInstance? _instance;

  FirebaseInstance._();

  static FirebaseInstance get getInstance => _instance ??= FirebaseInstance._();

  static FirebaseAuth? _firebaseAuth;
  static FirebaseFirestore? _fireStoreDb;

  FirebaseAuth get getAuthInstance => _firebaseAuth ??= FirebaseAuth.instance;

  FirebaseFirestore get getFireStoreInstance =>
      _fireStoreDb ??= FirebaseFirestore.instance;
}

final FirebaseInstance firebaseService = FirebaseInstance.getInstance;
