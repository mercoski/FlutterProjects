import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/functions/alertdialog.dart';
import 'package:travel_app/functions/googlesignhelper.dart';

Future<void> loginFunction(
    BuildContext context, String mail, String password, String method) async {
  if (method == 'mail') {
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
  } else if (method == 'google') {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await GoogleSigninHelper().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await GoogleSigninHelper().googleAutheticate();
      final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      FirebaseAuth auth = FirebaseAuth.instance;
      await auth.signInWithCredential(credential);
      auth.idTokenChanges().listen((User? user) {
        if (user != null) {
          Provider.of<UserClass>(context, listen: false).SetMail(user.email);
          Provider.of<UserClass>(context, listen: false)
              .SetImage(user.photoURL);
          Provider.of<UserClass>(context, listen: false)
              .SetName(user.displayName);
        }
      });

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
}
