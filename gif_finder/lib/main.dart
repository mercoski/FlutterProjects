import 'package:flutter/material.dart';
import 'package:gif_finder/pages/giffinder.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GIFFINDER',
      theme: ThemeData(primarySwatch: Colors.red),
      home: GifFinder(),
    );
  }
}
