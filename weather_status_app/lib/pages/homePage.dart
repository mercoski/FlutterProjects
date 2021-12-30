// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather_status_app/pages/searchPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String defaultState = 'İstanbul';
  int defaultTemp = 20;
  String sonuc = '';

  Future<String> getLocationData() async {
    var url = Uri.https('www.metaweather.com',
        '/api/location/search/?query=($defaultState)', {'q': '{http}'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    return response.body;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/c.jpg'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$defaultTemp° C',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    defaultState,
                    style: TextStyle(fontSize: 30),
                  ),
                  IconButton(
                    onPressed: () async {
                      sonuc = await getLocationData();
                      print(sonuc);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchPage(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
