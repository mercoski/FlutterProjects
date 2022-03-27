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
    UserClass user = UserClass(user_mail: mail);
    final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    Map<String, dynamic> userinfo = {
      'user_image': null,
      'user_mail': mail,
      'user_name': null,
    };
    await firebaseFirestore.collection('users').doc(mail).set(userinfo);
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserProfile(
          user: user,
        ),
      ),
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      showAlertDialog(context,
          title_text: 'Le mot de passe est faible',
          body_text_1: 'Veuillez réinitialiser votre mot de',
          body_text_2: 'passe pour vous connecter.');
    } else if (e.code == 'email-already-in-use') {
      showAlertDialog(context,
          title_text: 'Cet e-mail est déjà utilisé',
          body_text_1: 'Connectez-vous ou choisissez une',
          body_text_2: 'nouvelle adresse e-mail.');
    }
  }
}
