// ignore_for_file: prefer_const_constructors

import 'package:average_life_expectency/results_page.dart';
import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        secondaryHeaderColor: Colors.green,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green),
        scaffoldBackgroundColor: Colors.orange[700],
      ),
      home: InputPage(),
    );
  }
}
