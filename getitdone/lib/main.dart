import 'package:flutter/material.dart';
import 'package:getitdone/models/items_data.dart';
import 'package:provider/provider.dart';

import 'screens/homepage.dart';
import '';

void main() {
  runApp(ChangeNotifierProvider<ItemData>(
      create: (BuildContext context) => ItemData(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.red,
          accentColor: Colors.red,
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.red,
          appBarTheme: const AppBarTheme(color: Colors.red),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: const TextTheme(
              subtitle1: TextStyle(color: Colors.black),
              headline3: TextStyle(color: Colors.black))),
      home: Home(),
    );
  }
}
