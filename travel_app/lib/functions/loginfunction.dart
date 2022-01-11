import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/functions/alertdialog.dart';

Future<void> loginFunction(
    BuildContext context, String mail, String password) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: mail, password: password);
    Navigator.pop(context);
    Navigator.pushNamed(context, '/userprofile');
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
      showAlertDialog(context,
          title_text: 'Wrong Email or Password',
          body_text:
              'The mail or password you entered is wrong please check and enter again ');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
      showAlertDialog(context,
          title_text: 'Wrong Email or Password',
          body_text:
              'The mail or password you entered is wrong please check and enter again ');
    }
  }
}
