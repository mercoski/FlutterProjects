import 'dart:io';

import 'package:fitness_tracker/Models/move_data.dart';
import 'package:fitness_tracker/Models/selected_muscle.dart';
import 'package:fitness_tracker/Screens/create_plan_page.dart';
import 'package:fitness_tracker/Screens/current_stats_page.dart';
import 'package:fitness_tracker/Utils/AdaptiveScreenSize.dart';
import 'package:fitness_tracker/Utils/AdaptiveTextSize.dart';
import 'package:fitness_tracker/Utils/sharedPref.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';

Future<void> heightWeightPicker(BuildContext context,
    {required String title_text,
    required int minValue,
    required int maxValue,
    required int current_value,
    required String scale,
    required String measure}) async {
  return showDialog<void>(
    barrierColor: Colors.white30,
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return StatefulBuilder(builder: (context, setState) {
        return AlertDialog(
          //backgroundColor: Colors.orange[200],
          title: Center(
              child: Text(
            title_text,
            style: TextStyle(
              fontFamily: 'Recoleta',
              fontSize:
                  const AdaptiveTextSize().getadaptiveTextSize(context, 20),
              fontWeight: FontWeight.w600,
              color: Theme.of(context).primaryColor,
            ),
          )),

          content: Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 200),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NumberPicker(
                      selectedTextStyle: TextStyle(
                        fontFamily: 'Recoleta',
                        fontSize: const AdaptiveTextSize()
                            .getadaptiveTextSize(context, 20),
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor,
                      ),
                      haptics: true,
                      itemHeight: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 50),
                      itemWidth: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 150),
                      value: current_value,
                      minValue: minValue,
                      maxValue: maxValue,
                      onChanged: (value) =>
                          setState(() => current_value = value),
                    ),
                    Text(scale,
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor,
                        ))
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red[600],
                          minimumSize: Size(
                              AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 120),
                              AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 40)),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  settings: RouteSettings(),
                                  builder: (context) => CurrentStatsPage()));
                        },
                        child: Container(
                            child: Text(
                          'Cancel',
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontSize: const AdaptiveTextSize()
                                .getadaptiveTextSize(context, 20),
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ))),
                    Spacer(),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green[600],
                          minimumSize: Size(
                              AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 120),
                              AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 40)),
                        ),
                        onPressed: () {
                          setState(() {
                            if (measure == 'height') {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveMeasuresToSharedPref(
                                      'height', current_value);
                            } else if (measure == 'weight') {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveMeasuresToSharedPref(
                                      'weight', current_value);
                            } else if (measure == 'waist') {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveMeasuresToSharedPref(
                                      'waist', current_value);
                            } else if (measure == 'neck') {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveMeasuresToSharedPref(
                                      'neck', current_value);
                            } else if (measure == 'arms') {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveMeasuresToSharedPref(
                                      'arms', current_value);
                            } else if (measure == 'chest') {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveMeasuresToSharedPref(
                                      'chest', current_value);
                            } else if (measure == 'shoulders') {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveMeasuresToSharedPref(
                                      'shoulders', current_value);
                            } else if (measure == 'forearms') {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveMeasuresToSharedPref(
                                      'forearms', current_value);
                            } else if (measure == 'hips') {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveMeasuresToSharedPref(
                                      'hips', current_value);
                            } else if (measure == 'upper_legs') {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveMeasuresToSharedPref(
                                      'upper_legs', current_value);
                            } else if (measure == 'calfs') {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveMeasuresToSharedPref(
                                      'calfs', current_value);
                            }

                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    settings: RouteSettings(),
                                    builder: (context) => CurrentStatsPage()));
                          });
                        },
                        child: Container(
                            child: Text(
                          'Okay',
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontSize: const AdaptiveTextSize()
                                .getadaptiveTextSize(context, 20),
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ))),
                  ],
                )
              ],
            ),
          ),
        );
      });
    },
  );
}
