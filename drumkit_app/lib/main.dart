// ignore_for_file: prefer_const_constructors

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
                      child: TextButton(
                        onPressed: () {
                          oynatici.play('oobah.wav');
                        },
                        style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          color: Color(0xffA7B9CF),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          oynatici.play('how.wav');
                        },
                        style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          color: Color(0xff301633),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          oynatici.play('bongo.wav');
                        },
                        style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          color: Color(0xff663D6B),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          oynatici.play('bip.wav');
                        },
                        style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          color: Color(0xff427FC9),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          oynatici.play('crash.wav');
                        },
                        style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          color: Color(0xff3E2041),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          oynatici.play('clap3.wav');
                        },
                        style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          color: Color(0xff4B2A4F),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          oynatici.play('clap1.wav');
                        },
                        style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          oynatici.play('clap2.wav');
                        },
                        style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          color: Color(0xff23290D),
                        ),
                      ),
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
}
