import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FirebaseAuth auth = FirebaseAuth.instance;
          auth.idTokenChanges().listen(
            (User? user) {
              if (user == null) {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/loginsignupselectionpage');
              } else {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/userprofile');
              }
            },
          );
        },
        child: Container(
          color: Color(0xffFCFAF5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FractionallySizedBox(
                widthFactor: 0.8,
                child: Image.asset('assets/spotonlogo.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
