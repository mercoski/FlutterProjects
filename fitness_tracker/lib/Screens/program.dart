import 'package:fitness_tracker/Models/move_data.dart';
import 'package:fitness_tracker/Models/selected_muscle.dart';
import 'package:fitness_tracker/Models/selected_page.dart';
import 'package:fitness_tracker/Screens/activities.dart';
import 'package:fitness_tracker/Utils/AdaptiveScreenSize.dart';
import 'package:fitness_tracker/Utils/AdaptiveTextSize.dart';
import 'package:fitness_tracker/Utils/sharedPref.dart';
import 'package:fitness_tracker/Widgets/moves/time_series_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProgramPage extends StatelessWidget {
  const ProgramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Temizlemek için çalıştır
    //Provider.of<sharedPrefs>(context, listen: false).clearlist();
    String month_1 = ('0' + DateTime.now().month.toString());
    String month = month_1.substring(month_1.length - 2);
    //------------------------------------------------------//
    String day_1 = ('0' + DateTime.now().day.toString());
    String day = day_1.substring(day_1.length - 2);
    //-------------------------------------------------------//
    int weekday = DateTime.now().weekday;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fitness Tracker'),
      ),
      body: (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').isEmpty || weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities')[0] == 'Rest Day') ||
              (weekday == 2 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('tuesday_activities').isEmpty ||
                  weekday == 2 &&
                      Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('tuesday_activities')[0] ==
                          'Rest Day') ||
              (weekday == 3 &&
                      Provider.of<sharedPrefs>(context, listen: false)
                          .getSavedWeightsFromSharedPref('wednesday_activities')
                          .isEmpty ||
                  weekday == 3 &&
                      Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('wednesday_activities')[0] ==
                          'Rest Day') ||
              (weekday == 4 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('thursday_activities').isEmpty ||
                  weekday == 4 &&
                      Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('thursday_activities')[0] ==
                          'Rest Day') ||
              (weekday == 5 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('friday_activities').isEmpty ||
                  weekday == 5 &&
                      Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('friday_activities')[0] ==
                          'Rest Day') ||
              (weekday == 6 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('saturday_activities').isEmpty ||
                  weekday == 6 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('saturday_activities')[0] == 'Rest Day') ||
              (weekday == 7 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('sunday_activities').isEmpty || weekday == 7 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('sunday_activities')[0] == 'Rest Day')
          ? Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Rest Day',
                      style: TextStyle(
                        fontFamily: 'Recoleta',
                        fontSize: const AdaptiveTextSize()
                            .getadaptiveTextSize(context, 25),
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Boşluk 20 birim
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Chest')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Chest')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Chest')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Chest')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Chest')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Chest')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Chest'))
                        ? Container(
                            height: const AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 20),
                          )
                        : Container(),
                    //Chest
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Chest')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Chest')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Chest')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Chest')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Chest')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Chest')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Chest'))
                        ? GestureDetector(
                            onTap: () {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveWeightsToSharedPref(
                                      'chest_weights', ['100']);
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveDatesToSharedPref('chest_dates', [
                                '${DateTime.now().year}-${month}-${day}'
                              ]);
                              for (var i = 0;
                                  i <
                                      Provider.of<sharedPrefs>(context,
                                              listen: false)
                                          .getSavedListLenght('chest_weights');
                                  i++) {
                                chest_data.add(
                                  TimeSeriesWeights(
                                    DateTime.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'chest_dates')[i]
                                          .toString(),
                                    ),
                                    int.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'chest_weights')[i]
                                          .toString(),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              height: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 100),
                              width: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 300),
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
                                          .getadaptiveTextSize(context, 30),
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),

                    Container(
                      height: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),

                    //Chest Activities
                    Activities(activity_list: 'chest_activities'),
                    //Boşluk 20 birim
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Shoulders')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Shoulders')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Shoulders')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Shoulders')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Shoulders')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Shoulders')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Shoulders'))
                        ? Container(
                            height: const AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 20),
                          )
                        : Container(),

                    //Shoulders
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Shoulders')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Shoulders')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Shoulders')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Shoulders')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Shoulders')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Shoulders')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Shoulders'))
                        ? GestureDetector(
                            onTap: () {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveWeightsToSharedPref(
                                      'shoulders_weights', ['100']);
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveDatesToSharedPref('shoulders_dates', [
                                '${DateTime.now().year}-${month}-${day}'
                              ]);
                              for (var i = 0;
                                  i <
                                      Provider.of<sharedPrefs>(context,
                                              listen: false)
                                          .getSavedListLenght(
                                              'shoulders_weights');
                                  i++) {
                                shoulder_data.add(
                                  TimeSeriesWeights(
                                    DateTime.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'shoulders_dates')[i]
                                          .toString(),
                                    ),
                                    int.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'shoulders_weights')[i]
                                          .toString(),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              height: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 100),
                              width: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 300),
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
                                          .getadaptiveTextSize(context, 30),
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    Container(
                      height: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),

                    //Chest Activities
                    Activities(activity_list: 'shoulders_activities'),
                    //Boşluk 20 birim
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Biceps')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Biceps')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Biceps')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Biceps')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Biceps')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Biceps')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Biceps'))
                        ? Container(
                            height: const AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 20),
                          )
                        : Container(),

                    //Biceps
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Biceps')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Biceps')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Biceps')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Biceps')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Biceps')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Biceps')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Biceps'))
                        ? GestureDetector(
                            onTap: () {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveWeightsToSharedPref(
                                      'biceps_weights', ['60']);
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveDatesToSharedPref('biceps_dates', [
                                '${DateTime.now().year}-${month}-${day}'
                              ]);
                              for (var i = 0;
                                  i <
                                      Provider.of<sharedPrefs>(context,
                                              listen: false)
                                          .getSavedListLenght('biceps_weights');
                                  i++) {
                                biceps_data.add(
                                  TimeSeriesWeights(
                                    DateTime.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'biceps_dates')[i]
                                          .toString(),
                                    ),
                                    int.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'biceps_weights')[i]
                                          .toString(),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              height: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 100),
                              width: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 300),
                              child: Card(
                                color: Theme.of(context).primaryColor,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    'Biceps',
                                    style: TextStyle(
                                      fontFamily: 'Recoleta',
                                      fontSize: const AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 30),
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    Container(
                      height: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),

                    //Chest Activities
                    Activities(activity_list: 'biceps_activities'),
                    //Boşluk 20 birim
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Triceps')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Triceps')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Triceps')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Triceps')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Triceps')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Triceps')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Triceps'))
                        ? Container(
                            height: const AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 20),
                          )
                        : Container(),

                    //Triceps
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Triceps')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Triceps')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Triceps')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Triceps')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Triceps')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Triceps')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Triceps'))
                        ? GestureDetector(
                            onTap: () {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveWeightsToSharedPref(
                                      'triceps_weights', ['60']);
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveDatesToSharedPref('triceps_dates', [
                                '${DateTime.now().year}-${month}-${day}'
                              ]);
                              for (var i = 0;
                                  i <
                                      Provider.of<sharedPrefs>(context,
                                              listen: false)
                                          .getSavedListLenght(
                                              'triceps_weights');
                                  i++) {
                                triceps_data.add(
                                  TimeSeriesWeights(
                                    DateTime.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'triceps_dates')[i]
                                          .toString(),
                                    ),
                                    int.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'triceps_weights')[i]
                                          .toString(),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              height: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 100),
                              width: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 300),
                              child: Card(
                                color: Theme.of(context).primaryColor,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    'Triceps',
                                    style: TextStyle(
                                      fontFamily: 'Recoleta',
                                      fontSize: const AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 30),
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    Container(
                      height: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),

                    //Chest Activities
                    Activities(
                        activity_list: 'triceps_activities'), //Boşluk 20 birim
                    //Boşluk 20 birim
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Abs')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Abs')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Abs')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Abs')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Abs')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Abs')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Abs'))
                        ? Container(
                            height: const AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 20),
                          )
                        : Container(),

                    //Abs
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Abs')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Abs')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Abs')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Abs')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Abs')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Abs')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Abs'))
                        ? GestureDetector(
                            onTap: () {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveWeightsToSharedPref(
                                      'abs_weights', ['60']);
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveDatesToSharedPref('abs_dates', [
                                '${DateTime.now().year}-${month}-${day}'
                              ]);
                              for (var i = 0;
                                  i <
                                      Provider.of<sharedPrefs>(context,
                                              listen: false)
                                          .getSavedListLenght('abs_weights');
                                  i++) {
                                abs_data.add(
                                  TimeSeriesWeights(
                                    DateTime.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'abs_dates')[i]
                                          .toString(),
                                    ),
                                    int.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'abs_weights')[i]
                                          .toString(),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              height: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 100),
                              width: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 300),
                              child: Card(
                                color: Theme.of(context).primaryColor,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    'Abs',
                                    style: TextStyle(
                                      fontFamily: 'Recoleta',
                                      fontSize: const AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 30),
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    Container(
                      height: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),

                    //Chest Activities
                    Activities(activity_list: 'abs_activities'),
                    //Boşluk 20 birim
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Back')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Back')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Back')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Back')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Back')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Back')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Back'))
                        ? Container(
                            height: const AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 20),
                          )
                        : Container(),

                    //Back
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Back')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Back')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Back')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Back')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Back')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Back')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Back'))
                        ? GestureDetector(
                            onTap: () {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveWeightsToSharedPref(
                                      'back_weights', ['60']);
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveDatesToSharedPref('back_dates', [
                                '${DateTime.now().year}-${month}-${day}'
                              ]);
                              for (var i = 0;
                                  i <
                                      Provider.of<sharedPrefs>(context,
                                              listen: false)
                                          .getSavedListLenght('back_weights');
                                  i++) {
                                back_data.add(
                                  TimeSeriesWeights(
                                    DateTime.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'back_dates')[i]
                                          .toString(),
                                    ),
                                    int.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'back_weights')[i]
                                          .toString(),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              height: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 100),
                              width: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 300),
                              child: Card(
                                color: Theme.of(context).primaryColor,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    'Back',
                                    style: TextStyle(
                                      fontFamily: 'Recoleta',
                                      fontSize: const AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 30),
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    Container(
                      height: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),

                    //Chest Activities
                    Activities(activity_list: 'back_activities'),

                    //Boşluk 20 birim
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Calfs')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Calfs')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Calfs')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Calfs')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Calfs')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Calfs')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Calfs'))
                        ? Container(
                            height: const AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 20),
                          )
                        : Container(),

                    //Calfs
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Calfs')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Calfs')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Calfs')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Calfs')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Calfs')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Calfs')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Calfs'))
                        ? GestureDetector(
                            onTap: () {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveWeightsToSharedPref(
                                      'calfs_weights', ['60']);
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveDatesToSharedPref('calfs_dates', [
                                '${DateTime.now().year}-${month}-${day}'
                              ]);
                              for (var i = 0;
                                  i <
                                      Provider.of<sharedPrefs>(context,
                                              listen: false)
                                          .getSavedListLenght('calfs_weights');
                                  i++) {
                                calfs_data.add(
                                  TimeSeriesWeights(
                                    DateTime.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'calfs_dates')[i]
                                          .toString(),
                                    ),
                                    int.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'calfs_weights')[i]
                                          .toString(),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              height: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 100),
                              width: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 300),
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
                                          .getadaptiveTextSize(context, 30),
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    Container(
                      height: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),

                    //Chest Activities
                    Activities(activity_list: 'calfs_activities'),

                    //Boşluk 20 birim
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Upper Legs')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Upper Legs')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Upper Legs')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Upper Legs')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Upper Legs')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Upper Legs')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Upper Legs'))
                        ? Container(
                            height: const AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 20),
                          )
                        : Container(),

                    //Upper Legs
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Upper Legs')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Upper Legs')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Upper Legs')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Upper Legs')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Upper Legs')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Upper Legs')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Upper Legs'))
                        ? GestureDetector(
                            onTap: () {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveWeightsToSharedPref(
                                      'upper_legs_weights', ['60']);
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveDatesToSharedPref('upper_legs_dates', [
                                '${DateTime.now().year}-${month}-${day}'
                              ]);
                              for (var i = 0;
                                  i <
                                      Provider.of<sharedPrefs>(context,
                                              listen: false)
                                          .getSavedListLenght(
                                              'upper_legs_weights');
                                  i++) {
                                upper_legs_data.add(
                                  TimeSeriesWeights(
                                    DateTime.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'upper_legs_dates')[i]
                                          .toString(),
                                    ),
                                    int.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'upper_legs_weights')[i]
                                          .toString(),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              height: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 100),
                              width: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 300),
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
                                          .getadaptiveTextSize(context, 30),
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    Container(
                      height: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),

                    //Chest Activities
                    Activities(activity_list: 'upper_legs_activities'),

                    //Boşluk 20 birim
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Cardio')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Cardio')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Cardio')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Cardio')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Cardio')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Cardio')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Cardio'))
                        ? Container(
                            height: const AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 20),
                          )
                        : Container(),

                    //Cardio
                    (weekday == 1 && Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref('monday_activities').contains('Cardio')) ||
                            (weekday == 2 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'tuesday_activities')
                                    .contains('Cardio')) ||
                            (weekday == 3 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'wednesday_activities')
                                    .contains('Cardio')) ||
                            (weekday == 4 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'thursday_activities')
                                    .contains('Cardio')) ||
                            (weekday == 5 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'friday_activities')
                                    .contains('Cardio')) ||
                            (weekday == 6 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        'saturday_activities')
                                    .contains('Cardio')) ||
                            (weekday == 7 &&
                                Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref('sunday_activities')
                                    .contains('Cardio'))
                        ? GestureDetector(
                            onTap: () {
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveWeightsToSharedPref(
                                      'cardio_times', ['60']);
                              Provider.of<sharedPrefs>(context, listen: false)
                                  .saveDatesToSharedPref('cardio_dates', [
                                '${DateTime.now().year}-${month}-${day}'
                              ]);
                              for (var i = 0;
                                  i <
                                      Provider.of<sharedPrefs>(context,
                                              listen: false)
                                          .getSavedListLenght('cardio_times');
                                  i++) {
                                cardio_data.add(
                                  TimeSeriesWeights(
                                    DateTime.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'cardio_dates')[i]
                                          .toString(),
                                    ),
                                    int.parse(
                                      sharedPrefs()
                                          .getSavedWeightsFromSharedPref(
                                              'cardio_times')[i]
                                          .toString(),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              height: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 100),
                              width: const AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 300),
                              child: Card(
                                color: Theme.of(context).primaryColor,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    'Cardio',
                                    style: TextStyle(
                                      fontFamily: 'Recoleta',
                                      fontSize: const AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 30),
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    Container(
                      height: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),

                    //Chest Activities
                    Activities(activity_list: 'cardio_activities'),
                    //Boşluk 20 birim
                    Container(
                      height: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
