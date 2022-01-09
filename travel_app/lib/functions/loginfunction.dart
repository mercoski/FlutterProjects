import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/pages/userprofile.dart';

Future<void> loginFunction(
    BuildContext context, String mail, String password) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: mail, password: password);
    Navigator.pushNamed(context, '/userprofile');
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }
}
