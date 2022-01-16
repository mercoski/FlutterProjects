import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/functions/alertdialog.dart';
import 'package:travel_app/pages/userprofile.dart';

Future<void> signinFunction(
    BuildContext context, String mail, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: mail, password: password);

    final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    Map<String, dynamic> userinfo = {
      'user_image': null,
      'user_mail': mail,
      'user_name': null,
    };
    await firebaseFirestore.collection('users').doc(mail).set(userinfo);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserProfile(),
      ),
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
      showAlertDialog(context,
          title_text: 'Weak Password',
          body_text: 'The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
      showAlertDialog(context,
          title_text: 'Mail is already in use',
          body_text: 'The account already exists for that email.');
    }
  }
}
