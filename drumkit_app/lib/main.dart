// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DrumKit());
  }
}

class DrumKit extends StatefulWidget {
  @override
  _DrumKitState createState() => _DrumKitState();
}

class _DrumKitState extends State<DrumKit> {
  final oynatici = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Drum Kit',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: HitButton('bip', Colors.blue),
                    ),
                    Expanded(
                      child: HitButton('bongo', Colors.blueAccent),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: HitButton('clap1', Colors.yellow),
                    ),
                    Expanded(
                      child: HitButton('clap2', Colors.yellowAccent),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: HitButton('clap3', Colors.purple),
                    ),
                    Expanded(
                      child: HitButton('crash', Colors.purpleAccent),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: HitButton('ridebel', Colors.red),
                    ),
                    Expanded(
                      child: HitButton('woo', Colors.redAccent),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextButton HitButton(String ses, Color renk) {
    return TextButton(
      onPressed: () {
        oynatici.play('$ses.wav');
      },
      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
      child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: renk,
      ),
    );
  }
}
