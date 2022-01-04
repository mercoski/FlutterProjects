// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_status_app/Widgets/citynamewidget.dart';
import 'package:weather_status_app/Widgets/forecastswidget.dart';
import 'package:weather_status_app/Widgets/todayshotnesswidget.dart';
import 'package:weather_status_app/Widgets/searchiconwidget.dart';
import 'package:weather_status_app/Widgets/topbottommarginswidget.dart';
import 'package:weather_status_app/Widgets/topweathericonwidget.dart';
import 'package:weather_status_app/apis/tempdata.dart';
import 'package:weather_status_app/designfunctions/backgrounddecoration.dart';
import 'package:weather_status_app/functions/currentposition.dart';
import 'package:weather_status_app/functions/searchedlocation.dart';
import 'package:weather_status_app/pages/searchPage.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DefaultVariables defaultVariables =
      DefaultVariables('ankara', -999, [], 2343732, 'c', 0, 0, [], [], []);

  void getCurrentLocation() async {
    await determinePosition(
        defaultVariables: defaultVariables, context: context);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 0), () {
      getCurrentLocation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          background_decoration(image: defaultVariables.default_weather_abbr),
      child: defaultVariables.defaultTemp == -999
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TopBottomMarginsWidget(),
                    TopWeatherWidget(defaultVariables: defaultVariables),
                    HotnessWidget(defaultVariables: defaultVariables),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          citynamewidget(defaultVariables: defaultVariables),
                          IconButton(
                            onPressed: () async {
                              defaultVariables.defaultState =
                                  await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchPage(),
                                ),
                              );
                              await getLocationData(
                                  defaultVariables: defaultVariables,
                                  context: context);
                              setState(() {});
                            },
                            icon: searchiconwidget(),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.60,
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return DailyWeather(
                            date: defaultVariables.dates[index].toString(),
                            image: defaultVariables.weather_abbs_forcast[index]
                                .toString(),
                            temp: defaultVariables.temps[index]
                                .toInt()
                                .toString(),
                            itemCount: 5,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider();
                        },
                      ),
                    ),
                    TopBottomMarginsWidget()
                  ],
                ),
              ),
            ),
    );
  }
}
