import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:havadurumuapp/variable_class/defaultVariables.dart';

import 'package:provider/provider.dart';
import 'pages/landing_page.dart';

void main() async {
  await init();
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) {
        return DefaultVariables();
      },
      child: Base()));
}

class Base extends StatelessWidget {
  const Base({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
    );
  }
}

Future init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
