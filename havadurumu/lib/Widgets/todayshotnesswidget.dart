import 'package:flutter/material.dart';
import 'package:weather_status_app/apis/tempdata.dart';
import 'package:weather_status_app/designfunctions/shadows.dart';

class HotnessWidget extends StatelessWidget {
  const HotnessWidget({
    Key? key,
    required this.defaultVariables,
  }) : super(key: key);

  final DefaultVariables defaultVariables;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: FittedBox(
        child: Text(
          defaultVariables.defaultTemp.toString() + ' C°',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold,
              // ignore: prefer_const_literals_to_create_immutables
              shadows: [textShadow()]),
        ),
      ),
    );
  }
}
