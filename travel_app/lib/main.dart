import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/pages/forgotpasswordpage.dart';
import 'package:travel_app/pages/landingpage.dart';
import 'package:travel_app/pages/loginorsignupselectionpage.dart';
import 'package:travel_app/pages/loginpage.dart';
import 'package:travel_app/pages/signuppage.dart';
import 'package:travel_app/pages/userprofile.dart';

void main() async {
  await init();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<UserClass>(
            create: (BuildContext context) => UserClass()),
      ],
      child: TravelApp(),
    ));
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
        '/': (context) => LandingPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/loginpage': (context) => const LoginPage(),
        '/signuppage': (context) => const SignupPage(),
        '/loginsignupselectionpage': (context) =>
            const LoginSignupSelectionPage(),
        '/forgotpass': (context) => const ForgotPasswordPage(),
        '/userprofile': (context) => const UserProfile(),
      },
    );
  }
}

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseAuth auth = FirebaseAuth.instance;
  auth.idTokenChanges().listen((User? user) {
    if (user == null) {
      print('User is NOT signed in!');
    } else {
      print('User is signed in!');
    }
  });
}
