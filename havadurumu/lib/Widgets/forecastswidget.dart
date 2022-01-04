// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather_status_app/designfunctions/shadows.dart';

class DailyWeather extends StatelessWidget {
  final String image;
  final String temp;
  final String date;
  final int itemCount;

  const DailyWeather(
      {required this.image,
      required this.temp,
      required this.date,
      required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 1,
      child: SizedBox(
        height: MediaQuery.of(context).size.height / itemCount,
        width: MediaQuery.of(context).size.width * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Image.network(
                'https://www.metaweather.com/static/img/weather/png/$image.png',
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              title: Text(
                '$temp°C',
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
                    // ignore: prefer_const_literals_to_create_immutables
                    shadows: [textShadow()]),
              ),
              subtitle: Text(
                date,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200,
                    // ignore: prefer_const_literals_to_create_immutables
                    shadows: [textShadow()]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
