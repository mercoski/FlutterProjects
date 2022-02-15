/// Example of a time series chart using a bar renderer.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:fitness_tracker/Models/move_data.dart';
import 'package:fitness_tracker/Models/selected_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TimeSeriesBar extends StatefulWidget {
  const TimeSeriesBar({Key? key}) : super(key: key);

  @override
  State<TimeSeriesBar> createState() => _TimeSeriesBarState();

  /// Create one series with sample hard coded data.
  static List<charts.Series<TimeSeriesWeights, DateTime>> _createSampleData(
      String selected) {
    return [
      charts.Series<TimeSeriesWeights, DateTime>(
        id: 'Weights',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        labelAccessorFn: (TimeSeriesWeights weights, _) =>
            weights.weights.toString(),
        domainFn: (TimeSeriesWeights weights, _) => weights.time,
        measureFn: (TimeSeriesWeights weights, _) => weights.weights,
        data: selected == 'Chest'
            ? chest_data
            : selected == 'Shoulders'
                ? shoulder_data
                : selected == 'Triceps'
                    ? triceps_data
                    : selected == 'Biceps'
                        ? biceps_data
                        : selected == 'Abs'
                            ? abs_data
                            : selected == 'Back'
                                ? back_data
                                : selected == 'Calfs'
                                    ? calfs_data
                                    : selected == 'Upper Legs'
                                        ? upper_legs_data
                                        : chest_data,
      )
    ];
  }
}

class _TimeSeriesBarState extends State<TimeSeriesBar> {
  @override
  Widget build(BuildContext context) {
    return charts.TimeSeriesChart(
      TimeSeriesBar._createSampleData(
          Provider.of<SelectedPage>(context).selectedPage),
      animate: true,
      defaultRenderer: charts.BarRendererConfig<DateTime>(),
      defaultInteractions: false,
    );
  }
}

/// Sample time series data type.
class TimeSeriesWeights {
  final DateTime time;
  final int weights;

  TimeSeriesWeights(this.time, this.weights);
}
