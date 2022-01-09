import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/pages/userprofile.dart';

Future<void> signinFunction(BuildContext context) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: Provider.of<UserClass>(context, listen: false).user_mail,
            password:
                Provider.of<UserClass>(context, listen: false).user_password);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserProfile(),
      ),
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}
