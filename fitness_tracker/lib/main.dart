import 'package:fitness_tracker/Models/selected_muscle.dart';
import 'package:fitness_tracker/Models/selected_page.dart';
import 'package:fitness_tracker/Screens/home_page.dart';
import 'package:fitness_tracker/Utils/sharedPref.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sharedPrefs().loadThemeDataFromPref();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<SelectedPage>(
      create: (BuildContext context) => SelectedPage(),
    ),
    ChangeNotifierProvider<SelectedMuscle>(
      create: (BuildContext context) => SelectedMuscle(),
    ),
    ChangeNotifierProvider<sharedPrefs>(
      create: (BuildContext context) => sharedPrefs(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(color: Colors.black, elevation: 5),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: const TextTheme(
              subtitle1: TextStyle(color: Colors.black),
              headline3: TextStyle(color: Colors.black))),
      home: const HomePage(),
    );
  }
}
