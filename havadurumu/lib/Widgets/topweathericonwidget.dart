import 'package:flutter/material.dart';
import 'package:weather_status_app/apis/tempdata.dart';

class TopWeatherWidget extends StatelessWidget {
  const TopWeatherWidget({
    Key? key,
    required this.defaultVariables,
  }) : super(key: key);

  final DefaultVariables defaultVariables;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Image.network(
          'https://www.metaweather.com/static/img/weather/png/${defaultVariables.default_weather_abbr}.png'),
    );
  }
}
