import 'package:flutter/material.dart';
import 'package:weather_status_app/apis/tempdata.dart';

class citynamewidget extends StatelessWidget {
  const citynamewidget({
    Key? key,
    required this.defaultVariables,
  }) : super(key: key);

  final DefaultVariables defaultVariables;

  @override
  Widget build(BuildContext context) {
    return Text(
      defaultVariables.defaultState.toLowerCase().toUpperCase(),
      // ignore: prefer_const_literals_to_create_immutables
      style: TextStyle(fontSize: 30, shadows: [
        Shadow(blurRadius: 20, color: Colors.red, offset: Offset(-3, 5))
      ]),
    );
  }
}
