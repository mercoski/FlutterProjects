// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:havadurumuapp/designs/background_decoration.dart';
import 'package:havadurumuapp/functions/selected_locations_weather.dart';
import 'package:havadurumuapp/variable_class/defaultVariables.dart';
import 'package:havadurumuapp/widgets/citynamewidget.dart';
import 'package:havadurumuapp/widgets/daily_weather_widget.dart';
import 'package:havadurumuapp/widgets/hotnesswidget.dart';
import 'package:havadurumuapp/widgets/topweatherwidget.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  void getCurrentLocation() async {
    await getLocationData(
        defaultVariables: Provider.of<DefaultVariables>(context, listen: false),
        context: context);
    setState(() {});
  }

  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      getCurrentLocation();
    });
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: background_decoration(
          image: Provider.of<DefaultVariables>(context, listen: false)
              .default_weather_abbr),
      child:
          Provider.of<DefaultVariables>(context, listen: false).defaultTemp ==
                  -999
              ? Center(child: CircularProgressIndicator())
              : Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TopWeatherWidget(),
                        HotnessWidget(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            citynamewidget(),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.60,
                          child: ListView.separated(
                            scrollDirection: Axis.vertical,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return DailyWeather(
                                date: Provider.of<DefaultVariables>(context,
                                        listen: false)
                                    .dates[index]
                                    .toString(),
                                image: Provider.of<DefaultVariables>(context,
                                        listen: false)
                                    .weather_abbs_forcast[index]
                                    .toString(),
                                temp: Provider.of<DefaultVariables>(context,
                                        listen: false)
                                    .temps[index]
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
                      ],
                    ),
                  ),
                  floatingActionButton: FloatingActionButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    backgroundColor: Colors.red,
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
    );
  }
}
