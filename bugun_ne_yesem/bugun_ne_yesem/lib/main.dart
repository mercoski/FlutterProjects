// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Bugün ne yesem ?',
            style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(color: Colors.blue[800])),
          ),
          backgroundColor: Colors.orange,
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatlino = 1;
  List corbaListesi = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List tatliListesi = ['Kadayıf', 'Baklava', 'Sütlaç', 'Kazandibi', 'Dondurma'];
  List yemekListesi = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];

  void RandomImage() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatlino = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: OutlinedButton(
                onPressed: RandomImage,
                child: Image.asset('assets/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(corbaListesi[corbaNo - 1]),
          Divider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    if (yemekNo != 5) {
                      yemekNo += 1;
                    } else {
                      yemekNo = 1;
                    }
                  });
                },
                child: Image.asset('assets/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(
            yemekListesi[yemekNo - 1],
          ),
          Divider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    if (tatlino != 5) {
                      tatlino += 1;
                    } else {
                      tatlino = 1;
                    }
                  });
                },
                child: Image.asset('assets/tatli_$tatlino.jpg'),
              ),
            ),
          ),
          Text(tatliListesi[tatlino - 1]),
          Divider(),
        ],
      ),
    );
  }
}
