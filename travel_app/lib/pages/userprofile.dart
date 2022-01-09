import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/pages/loginpage.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        primary: true,
        centerTitle: true,
        title: const Text('Spot On Travel'),
        leading: Image.asset('assets/spotonlogo.png'),
        backgroundColor: Colors.black,
      ),
      body: OutlinedButton(
        onPressed: () async {
          await FirebaseAuth.instance.signOut();
          Navigator.pushNamed(context, '/');
        },
        child: Text('Sign-out'),
      ),
    );
  }
}
