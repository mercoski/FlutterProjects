// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:convert';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_status_app/Widgets/forecastswidget.dart';
import 'package:weather_status_app/Widgets/nearcitieswidget.dart';
import 'package:weather_status_app/Widgets/topbottommarginswidget.dart';
import 'package:weather_status_app/functions/alertdialogevent.dart';
import 'package:weather_status_app/designfunctions/backgrounddecoration.dart';
import 'package:weather_status_app/functions/nearlocations.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController textController = TextEditingController();
  var nearlocations;
  List<String> defaultCity = [];
  List<int> defaultDistance = [];

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: background_decoration(image: 'search'),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            bool _internetAccess = false;

            var connectivityResult = await (Connectivity().checkConnectivity());
            if (connectivityResult == ConnectivityResult.mobile ||
                connectivityResult == ConnectivityResult.wifi) {
              _internetAccess = true;
            } else {
              await showAlertDialog(context,
                  title_text: 'Internet Access Problem',
                  body_text:
                      'You are not connected to the internet. Please connect to internet to get data.');
            }

            var url = Uri.parse(
                'https://www.metaweather.com/api/location/search/?query=' +
                    textController.text.trim());
            var response = await http.get(url);
            String text = textController.text.toString().trim();
            try {
              if (response.body.isEmpty ||
                  (jsonDecode(response.body).isEmpty || text.isEmpty)) {
                showAlertDialog(this.context,
                    body_text:
                        'The city which you selected is invalid or we dont have its data, please type its name properly',
                    title_text: 'Selected city is invalid');
              } else {
                nearlocations = await getNearLocationData(
                    selectedCity: text, context: context);
                defaultCity = nearlocations[0];
                defaultDistance = nearlocations[1];

                setState(() {});
              }
            } on Exception catch (e) {
              print(e);
            }
          },
          backgroundColor: Colors.red,
          child: Text('OK'),
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TopBottomMarginsWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.20,
                      child: TextField(
                        controller: textController,
                        decoration: InputDecoration(
                          hintText: 'Select City',
                          hintStyle: TextStyle(color: Colors.red, fontSize: 50),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 50, color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.60,
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.pop(context, defaultCity[index]);
                            },
                            child: NearCities(
                              city: defaultCity.isEmpty
                                  ? 'City :'
                                  : 'City : ${defaultCity[index]}',
                              distance: defaultDistance.isEmpty
                                  ? 'Distance :'
                                  : 'Distance :${defaultDistance[index]}',
                              itemCount: 5,
                            ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
