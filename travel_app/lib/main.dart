import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/pages/loginpage.dart';
import 'package:travel_app/pages/userprofile.dart';

String page = '';

void main() async {
  page = await init();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(
      ChangeNotifierProvider<UserClass>(
        create: (BuildContext context) {
          return UserClass();
        },
        child: TravelApp(),
      ),
    );
  });
}

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) =>
            page == 'Logged-in' ? const LoginPage() : const UserProfile(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/userprofile': (context) => const UserProfile(),
      },
    );
  }
}

Future<String> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseAuth auth = FirebaseAuth.instance;
  auth.idTokenChanges().listen((User? user) {
    if (user == null) {
      page = 'Logged-in';
      print('User is NOT signed in!');
    } else {
      page = '';
      print('User is signed in!');
    }
  });
  return page;
}
