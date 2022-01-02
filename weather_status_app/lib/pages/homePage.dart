// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:weather_status_app/apis/tempdata.dart';
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

  Future<void> getLocationData() async {
    int dateRange = 5;
    var url = Uri.parse(
      'https://www.metaweather.com/api/location/search/?query=' +
          defaultVariables.defaultState,
    );

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    defaultVariables.woeid = jsonDecode(response.body)[0]['woeid'];
    url = Uri.parse(
      'https://www.metaweather.com/api/location/' +
          defaultVariables.woeid.toString(),
    );
    response = await http.get(url);
    defaultVariables.defaultTemp =
        jsonDecode(response.body)['consolidated_weather'][0]['the_temp']
            .toInt();
    defaultVariables.default_weather_abbr =
        jsonDecode(response.body)['consolidated_weather'][0]
            ['weather_state_abbr'];

    defaultVariables.dates.clear();
    defaultVariables.temps.clear();
    defaultVariables.weather_abbs_forcast.clear();

    for (var i = 1; i <= dateRange; i++) {
      defaultVariables.dates.add(
          jsonDecode(response.body)['consolidated_weather'][i]
              ['applicable_date']);
      defaultVariables.temps.add(
          jsonDecode(response.body)['consolidated_weather'][i]['the_temp']);
      defaultVariables.weather_abbs_forcast.add(
          jsonDecode(response.body)['consolidated_weather'][i]
              ['weather_state_abbr']);
    }

    setState(() {
      defaultVariables.defaultTemp = defaultVariables.defaultTemp;
      defaultVariables.default_weather_abbr =
          defaultVariables.default_weather_abbr;
      defaultVariables.temps = defaultVariables.temps;
      defaultVariables.weather_abbs_forcast =
          defaultVariables.weather_abbs_forcast;
      defaultVariables.dates = defaultVariables.dates;
    });
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    int dateRange = 5;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      return Future.error('Location permissions are denied');
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      defaultVariables.lattitude = position.latitude.toDouble();
      defaultVariables.longtitude = position.longitude.toDouble();
      var url = Uri.parse(
        'https://www.metaweather.com/api/location/search/?lattlong=' +
            defaultVariables.lattitude.toString() +
            ', ' +
            defaultVariables.longtitude.toString(),
      );
      var response = await http.get(url);
      defaultVariables.woeid = jsonDecode(response.body)[1]['woeid'];
      defaultVariables.defaultState = jsonDecode(response.body)[1]['title']
          .toString()
          .toLowerCase()
          .toUpperCase();

      url = Uri.parse(
        'https://www.metaweather.com/api/location/' +
            defaultVariables.woeid.toString(),
      );
      response = await http.get(url);
      defaultVariables.defaultTemp =
          jsonDecode(response.body)['consolidated_weather'][0]['the_temp']
              .toInt();
      defaultVariables.default_weather_abbr =
          jsonDecode(response.body)['consolidated_weather'][0]
              ['weather_state_abbr'];

      defaultVariables.dates.clear();

      for (var i = 1; i <= dateRange; i++) {
        defaultVariables.dates.add(
            jsonDecode(response.body)['consolidated_weather'][i]
                ['applicable_date']);
        defaultVariables.temps.add(
            jsonDecode(response.body)['consolidated_weather'][i]['the_temp']);
        defaultVariables.weather_abbs_forcast.add(
            jsonDecode(response.body)['consolidated_weather'][i]
                ['weather_state_abbr']);
      }
    } on Exception catch (e) {
      print(e);
    }

    setState(() {});
  }

  @override
  void initState() {
    _determinePosition();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image:
              AssetImage('assets/${defaultVariables.default_weather_abbr}.jpg'),
        ),
      ),
      child: defaultVariables.defaultTemp == -999
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 80,
                        width: 80,
                        child: Image.network(
                            'https://www.metaweather.com/static/img/weather/png/${defaultVariables.default_weather_abbr}.png'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        defaultVariables.defaultTemp.toString() + ' C°',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            // ignore: prefer_const_literals_to_create_immutables
                            shadows: [
                              Shadow(
                                  blurRadius: 30,
                                  color: Colors.red,
                                  offset: Offset(-3, 5))
                            ]),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            defaultVariables.defaultState
                                .toLowerCase()
                                .toUpperCase(),
                            // ignore: prefer_const_literals_to_create_immutables
                            style: TextStyle(fontSize: 30, shadows: [
                              Shadow(
                                  blurRadius: 20,
                                  color: Colors.red,
                                  offset: Offset(-3, 5))
                            ]),
                          ),
                          IconButton(
                            onPressed: () async {
                              print('Hello world');
                              defaultVariables.defaultState =
                                  await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchPage(),
                                ),
                              );
                              await getLocationData();
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.search,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        height: 300,
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return DailyWeather(
                              date: defaultVariables.dates[index].toString(),
                              image: defaultVariables
                                  .weather_abbs_forcast[index]
                                  .toString(),
                              temp: defaultVariables.temps[index]
                                  .toInt()
                                  .toString(),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider();
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

class DailyWeather extends StatelessWidget {
  final String image;
  final String temp;
  final String date;

  const DailyWeather(
      {required this.image, required this.temp, required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      elevation: 2,
      child: SizedBox(
        height: 120,
        width: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Image.network(
                'https://www.metaweather.com/static/img/weather/png/$image.png',
                height: 100,
                width: 100,
              ),
              title: Text(
                '$temp°C',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
                    // ignore: prefer_const_literals_to_create_immutables
                    shadows: [
                      Shadow(
                          blurRadius: 30,
                          color: Colors.red,
                          offset: Offset(-3, 5))
                    ]),
              ),
              subtitle: Text(
                '$date',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200,
                    // ignore: prefer_const_literals_to_create_immutables
                    shadows: [
                      Shadow(
                          blurRadius: 30,
                          color: Colors.red,
                          offset: Offset(-3, 5))
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
