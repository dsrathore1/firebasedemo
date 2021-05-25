import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in ano

  Future signInAno() async {
     result = await _auth.signInAnonymously();
    UserCredential user = result.user;
  }

  // sign in with email and password

  // register with email and password

  // sign out
}
