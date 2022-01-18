import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/UserClass/userClass.dart';

import 'userprofile.dart';

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
                UserClass? user_x = UserClass(
                    user_mail: user.email,
                    user_image: user.photoURL,
                    user_name: user.displayName);

                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserProfile(user: user_x)));
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
