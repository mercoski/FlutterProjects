import 'package:flutter/material.dart';
import 'package:havadurumuapp/variable_class/defaultVariables.dart';
import 'package:provider/provider.dart';

class TopWeatherWidget extends StatelessWidget {
  const TopWeatherWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Image.network(
          'https://www.metaweather.com/static/img/weather/png/${Provider.of<DefaultVariables>(context, listen: false).default_weather_abbr}.png'),
    );
  }
}
