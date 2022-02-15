import 'package:fitness_tracker/Widgets/moves/time_series_chart.dart';
import 'package:flutter/material.dart';

class MovesView extends StatelessWidget {
  const MovesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          color: Theme.of(context).scaffoldBackgroundColor,
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: TimeSeriesBar()),
    );
  }
}
