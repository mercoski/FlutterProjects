import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/pages/loginpage.dart';
import 'package:travel_app/widgets/buttomnavbar.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNav(),
      child: Scaffold(
        appBar: AppBar(
          primary: true,
          centerTitle: true,
          title: const Text('Spot On Travel'),
          leading: Image.asset('assets/spotonlogo.png'),
          backgroundColor: Colors.amber[800],
          actions: [
            OutlinedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              },
              child: Icon(Icons.logout),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [],
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
