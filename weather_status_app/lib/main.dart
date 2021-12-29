import 'package:flutter/material.dart';
import 'package:weather_status_app/pages/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Status',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
