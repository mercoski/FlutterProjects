import 'dart:math';

import 'package:fitness_tracker/Screens/height_weight_picker.dart';
import 'package:fitness_tracker/Utils/AdaptiveScreenSize.dart';
import 'package:fitness_tracker/Utils/AdaptiveTextSize.dart';
import 'package:fitness_tracker/Utils/sharedPref.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';

class CurrentStatsPage extends StatefulWidget {
  const CurrentStatsPage({Key? key}) : super(key: key);

  @override
  State<CurrentStatsPage> createState() => _CurrentStatsPageState();
}

class _CurrentStatsPageState extends State<CurrentStatsPage> {
  @override
  Widget build(BuildContext context) {
    double bmi = (Provider.of<sharedPrefs>(context, listen: false)
            .getSavedMeasuresFromSharedPref('weight') /
        (pow(
            Provider.of<sharedPrefs>(context, listen: false)
                    .getSavedMeasuresFromSharedPref('height') /
                100,
            2)));

    double bfp = 495 /
            (1.0324 -
                (0.19077 *
                    (log((Provider.of<sharedPrefs>(context, listen: false)
                            .getSavedMeasuresFromSharedPref('waist') -
                        Provider.of<sharedPrefs>(context, listen: false)
                            .getSavedMeasuresFromSharedPref('neck')))) /
                    ln10) +
                (0.15456 *
                        (log(Provider.of<sharedPrefs>(context, listen: false)
                            .getSavedMeasuresFromSharedPref('height')))) /
                    ln10) -
        450;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text('Fitness Tracker'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    heightWeightPicker(context,
                        title_text: 'Select Height',
                        measure: 'height',
                        scale: 'cm',
                        minValue: 40,
                        maxValue: 220,
                        current_value:
                            Provider.of<sharedPrefs>(context, listen: false)
                                .getSavedMeasuresFromSharedPref('height'));
                  },
                  child: SizedBox(
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 50),
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 200),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Height',
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontSize: const AdaptiveTextSize()
                                .getadaptiveTextSize(context, 20),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 50),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 100),
                  child: Card(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '${Provider.of<sharedPrefs>(context, listen: false).getSavedMeasuresFromSharedPref('height').toString()} cm',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    heightWeightPicker(context,
                        title_text: 'Select Weight',
                        measure: 'weight',
                        scale: 'kg',
                        minValue: 40,
                        maxValue: 160,
                        current_value:
                            Provider.of<sharedPrefs>(context, listen: false)
                                .getSavedMeasuresFromSharedPref('weight'));
                  },
                  child: SizedBox(
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 50),
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 200),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Weight',
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontSize: const AdaptiveTextSize()
                                .getadaptiveTextSize(context, 20),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 50),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 100),
                  child: Card(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '${Provider.of<sharedPrefs>(context, listen: false).getSavedMeasuresFromSharedPref('weight').toString()} kg',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    heightWeightPicker(context,
                        title_text: 'Select Waist',
                        measure: 'waist',
                        scale: 'cm',
                        minValue: 40,
                        maxValue: 150,
                        current_value:
                            Provider.of<sharedPrefs>(context, listen: false)
                                .getSavedMeasuresFromSharedPref('waist'));
                  },
                  child: SizedBox(
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 50),
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 200),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Waist',
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontSize: const AdaptiveTextSize()
                                .getadaptiveTextSize(context, 20),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 50),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 100),
                  child: Card(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '${Provider.of<sharedPrefs>(context, listen: false).getSavedMeasuresFromSharedPref('waist').toString()} cm',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    heightWeightPicker(context,
                        title_text: 'Select Neck',
                        measure: 'neck',
                        scale: 'cm',
                        minValue: 30,
                        maxValue: 50,
                        current_value:
                            Provider.of<sharedPrefs>(context, listen: false)
                                .getSavedMeasuresFromSharedPref('neck'));
                  },
                  child: SizedBox(
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 50),
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 200),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Neck',
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontSize: const AdaptiveTextSize()
                                .getadaptiveTextSize(context, 20),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 50),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 100),
                  child: Card(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '${Provider.of<sharedPrefs>(context, listen: false).getSavedMeasuresFromSharedPref('neck').toString()} cm',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

            //Arms
            Container(
              height: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    heightWeightPicker(context,
                        title_text: 'Select Arms',
                        measure: 'arms',
                        scale: 'cm',
                        minValue: 20,
                        maxValue: 60,
                        current_value:
                            Provider.of<sharedPrefs>(context, listen: false)
                                .getSavedMeasuresFromSharedPref('arms'));
                  },
                  child: SizedBox(
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 50),
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 200),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Arms',
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontSize: const AdaptiveTextSize()
                                .getadaptiveTextSize(context, 20),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 50),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 100),
                  child: Card(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '${Provider.of<sharedPrefs>(context, listen: false).getSavedMeasuresFromSharedPref('arms').toString()} cm',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

            //Chest
            Container(
              height: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    heightWeightPicker(context,
                        title_text: 'Select Chest',
                        measure: 'chest',
                        scale: 'cm',
                        minValue: 60,
                        maxValue: 150,
                        current_value:
                            Provider.of<sharedPrefs>(context, listen: false)
                                .getSavedMeasuresFromSharedPref('chest'));
                  },
                  child: SizedBox(
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 50),
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 200),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Chest',
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontSize: const AdaptiveTextSize()
                                .getadaptiveTextSize(context, 20),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 50),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 100),
                  child: Card(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '${Provider.of<sharedPrefs>(context, listen: false).getSavedMeasuresFromSharedPref('chest').toString()} cm',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

            //Shoulders
            Container(
              height: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    heightWeightPicker(context,
                        title_text: 'Select Shoulders',
                        measure: 'shoulders',
                        scale: 'cm',
                        minValue: 60,
                        maxValue: 150,
                        current_value:
                            Provider.of<sharedPrefs>(context, listen: false)
                                .getSavedMeasuresFromSharedPref('chest'));
                  },
                  child: SizedBox(
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 50),
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 200),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Shoulders',
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontSize: const AdaptiveTextSize()
                                .getadaptiveTextSize(context, 20),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 50),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 100),
                  child: Card(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '${Provider.of<sharedPrefs>(context, listen: false).getSavedMeasuresFromSharedPref('shoulders').toString()} cm',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

            //Forearms
            Container(
              height: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    heightWeightPicker(context,
                        title_text: 'Select Forearms',
                        measure: 'forearms',
                        scale: 'cm',
                        minValue: 20,
                        maxValue: 60,
                        current_value:
                            Provider.of<sharedPrefs>(context, listen: false)
                                .getSavedMeasuresFromSharedPref('forearms'));
                  },
                  child: SizedBox(
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 50),
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 200),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Forearms',
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontSize: const AdaptiveTextSize()
                                .getadaptiveTextSize(context, 20),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 50),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 100),
                  child: Card(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '${Provider.of<sharedPrefs>(context, listen: false).getSavedMeasuresFromSharedPref('forearms').toString()} cm',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

            //Hips
            Container(
              height: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    heightWeightPicker(context,
                        title_text: 'Select Hips',
                        measure: 'hips',
                        scale: 'cm',
                        minValue: 60,
                        maxValue: 150,
                        current_value:
                            Provider.of<sharedPrefs>(context, listen: false)
                                .getSavedMeasuresFromSharedPref('hips'));
                  },
                  child: SizedBox(
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 50),
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 200),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Hips',
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontSize: const AdaptiveTextSize()
                                .getadaptiveTextSize(context, 20),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 50),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 100),
                  child: Card(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '${Provider.of<sharedPrefs>(context, listen: false).getSavedMeasuresFromSharedPref('hips').toString()} cm',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

            //Upper Legs
            Container(
              height: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    heightWeightPicker(context,
                        title_text: 'Select Upper Legs',
                        measure: 'upper_legs',
                        scale: 'cm',
                        minValue: 30,
                        maxValue: 100,
                        current_value:
                            Provider.of<sharedPrefs>(context, listen: false)
                                .getSavedMeasuresFromSharedPref('upper_legs'));
                  },
                  child: SizedBox(
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 50),
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 200),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Upper Legs',
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontSize: const AdaptiveTextSize()
                                .getadaptiveTextSize(context, 20),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 50),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 100),
                  child: Card(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '${Provider.of<sharedPrefs>(context, listen: false).getSavedMeasuresFromSharedPref('upper_legs').toString()} cm',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

            //Calfs
            Container(
              height: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    heightWeightPicker(context,
                        title_text: 'Select Calfs',
                        measure: 'calfs',
                        scale: 'cm',
                        minValue: 20,
                        maxValue: 60,
                        current_value:
                            Provider.of<sharedPrefs>(context, listen: false)
                                .getSavedMeasuresFromSharedPref('calfs'));
                  },
                  child: SizedBox(
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 50),
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 200),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Calfs',
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontSize: const AdaptiveTextSize()
                                .getadaptiveTextSize(context, 20),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 50),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 100),
                  child: Card(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '${Provider.of<sharedPrefs>(context, listen: false).getSavedMeasuresFromSharedPref('calfs').toString()} cm',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

            //Calculated Fields
            Container(
              height: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 50),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 200),
                  child: Card(
                    color: Theme.of(context).primaryColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'BMI',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 50),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 100),
                  child: Card(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '${bmi.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 50),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 200),
                  child: Card(
                    color: Theme.of(context).primaryColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Body Fat %',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 50),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 100),
                  child: Card(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '${bfp.toStringAsFixed(2)} %',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
