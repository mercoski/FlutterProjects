import 'package:fitness_tracker/Models/move_data.dart';
import 'package:fitness_tracker/Screens/height_weight_picker.dart';
import 'package:fitness_tracker/Screens/set_rep_picker.dart';
import 'package:fitness_tracker/Utils/AdaptiveScreenSize.dart';
import 'package:fitness_tracker/Utils/AdaptiveTextSize.dart';
import 'package:fitness_tracker/Utils/sharedPref.dart';
import 'package:fitness_tracker/Widgets/moves/time_series_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Activities extends StatefulWidget {
  Activities(
      {Key? key,
      required this.activity_list,
      required this.repeat,
      this.sets,
      this.weight})
      : super(key: key);
  String activity_list;
  int? repeat;
  int? sets;
  int? weight;

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
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

    return SizedBox(
      height: const AdaptiveScreenSize().getadaptiveScreenSizeHeight(
          context,
          Provider.of<sharedPrefs>(context, listen: false)
                  .getSavedListLenght(widget.activity_list) *
              const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 85)),
      width:
          const AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 375),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: Provider.of<sharedPrefs>(context, listen: false)
            .getSavedListLenght(widget.activity_list),
        itemBuilder: (context, index) => Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 80),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 200),
                  child: Card(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '${Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index]}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);

                        setRepPicker(context,
                            action:
                                '${Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index]}',
                            title_text: 'How many sets',
                            minValue: 1,
                            maxValue: 10,
                            current_value: 3,
                            scale: 'sets',
                            measure: 'sets');
                      },
                      child: SizedBox(
                        height: const AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 40),
                        width: const AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 100),
                        child: Card(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Provider.of<sharedPrefs>(context, listen: false)
                                        .getSavedWeightsFromSharedPref(
                                            widget.activity_list)[index] ==
                                    'Barbell Bench Press'
                                ? Text(
                                    '$barbell_bench_press_sets sets',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Recoleta',
                                      fontSize: const AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 15),
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  )
                                : Provider.of<sharedPrefs>(context, listen: false)
                                            .getSavedWeightsFromSharedPref(
                                                widget.activity_list)[index] ==
                                        'Dumbell Bench Press'
                                    ? Text(
                                        '$dumbell_bench_press_sets sets',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Recoleta',
                                          fontSize: const AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 15),
                                          fontWeight: FontWeight.w600,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      )
                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(
                                                widget.activity_list)[index] ==
                                            'Incline Bench Press'
                                        ? Text(
                                            '$incline_bench_press_sets sets',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Recoleta',
                                              fontSize: const AdaptiveTextSize()
                                                  .getadaptiveTextSize(
                                                      context, 15),
                                              fontWeight: FontWeight.w600,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                          )
                                        : Provider.of<sharedPrefs>(context, listen: false)
                                                    .getSavedWeightsFromSharedPref(widget.activity_list)[index] ==
                                                'Decline Press'
                                            ? Text(
                                                '$decline_press_sets sets',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'Recoleta',
                                                  fontSize:
                                                      const AdaptiveTextSize()
                                                          .getadaptiveTextSize(
                                                              context, 15),
                                                  fontWeight: FontWeight.w600,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                              )
                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Machine Chest Press'
                                                ? Text(
                                                    '$machine_chest_press_sets sets',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontFamily: 'Recoleta',
                                                      fontSize:
                                                          const AdaptiveTextSize()
                                                              .getadaptiveTextSize(
                                                                  context, 15),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                                  )
                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Chest Fly'
                                                    ? Text(
                                                        '$chest_fly_sets sets',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Recoleta',
                                                          fontSize:
                                                              const AdaptiveTextSize()
                                                                  .getadaptiveTextSize(
                                                                      context,
                                                                      15),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                      )
                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Dumbell Pull-Over'
                                                        ? Text(
                                                            '$dumbell_pullover_sets sets',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Recoleta',
                                                              fontSize: const AdaptiveTextSize()
                                                                  .getadaptiveTextSize(
                                                                      context,
                                                                      15),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor,
                                                            ),
                                                          )
                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Machine Fly'
                                                            ? Text(
                                                                '$machine_fly_sets sets',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'Recoleta',
                                                                  fontSize: const AdaptiveTextSize()
                                                                      .getadaptiveTextSize(
                                                                          context,
                                                                          15),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Theme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                              )
                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Push Press'
                                                                ? Text(
                                                                    '$push_press_sets sets',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'Recoleta',
                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(
                                                                          context,
                                                                          15),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: Theme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  )
                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Military Press'
                                                                    ? Text(
                                                                        '$military_press_sets sets',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            TextStyle(
                                                                          fontFamily:
                                                                              'Recoleta',
                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(
                                                                              context,
                                                                              15),
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              Theme.of(context).primaryColor,
                                                                        ),
                                                                      )
                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Rear Delt Row'
                                                                        ? Text(
                                                                            '$rear_delt_row_sets sets',
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style:
                                                                                TextStyle(
                                                                              fontFamily: 'Recoleta',
                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                              fontWeight: FontWeight.w600,
                                                                              color: Theme.of(context).primaryColor,
                                                                            ),
                                                                          )
                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Seated Dumbell Press'
                                                                            ? Text(
                                                                                '$seated_dumbell_press_sets sets',
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(
                                                                                  fontFamily: 'Recoleta',
                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                  fontWeight: FontWeight.w600,
                                                                                  color: Theme.of(context).primaryColor,
                                                                                ),
                                                                              )
                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Seated Barbell Press'
                                                                                ? Text(
                                                                                    '$seated_barbell_press_sets sets',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: TextStyle(
                                                                                      fontFamily: 'Recoleta',
                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                      fontWeight: FontWeight.w600,
                                                                                      color: Theme.of(context).primaryColor,
                                                                                    ),
                                                                                  )
                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Upright Row'
                                                                                    ? Text(
                                                                                        '$upright_row_sets sets',
                                                                                        textAlign: TextAlign.center,
                                                                                        style: TextStyle(
                                                                                          fontFamily: 'Recoleta',
                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                          fontWeight: FontWeight.w600,
                                                                                          color: Theme.of(context).primaryColor,
                                                                                        ),
                                                                                      )
                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Arnold Press'
                                                                                        ? Text(
                                                                                            '$arnold_press_sets sets',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: TextStyle(
                                                                                              fontFamily: 'Recoleta',
                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                              fontWeight: FontWeight.w600,
                                                                                              color: Theme.of(context).primaryColor,
                                                                                            ),
                                                                                          )
                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Rear Delt Fly'
                                                                                            ? Text(
                                                                                                '$rear_delt_fly_sets sets',
                                                                                                textAlign: TextAlign.center,
                                                                                                style: TextStyle(
                                                                                                  fontFamily: 'Recoleta',
                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                ),
                                                                                              )
                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Lateral Raise'
                                                                                                ? Text(
                                                                                                    '$lateral_raise_sets sets',
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: TextStyle(
                                                                                                      fontFamily: 'Recoleta',
                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                    ),
                                                                                                  )
                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Front Raise'
                                                                                                    ? Text(
                                                                                                        '$front_raise_sets sets',
                                                                                                        textAlign: TextAlign.center,
                                                                                                        style: TextStyle(
                                                                                                          fontFamily: 'Recoleta',
                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                        ),
                                                                                                      )
                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Barbell Curl'
                                                                                                        ? Text(
                                                                                                            '$barbell_curl_sets sets',
                                                                                                            textAlign: TextAlign.center,
                                                                                                            style: TextStyle(
                                                                                                              fontFamily: 'Recoleta',
                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                              fontWeight: FontWeight.w600,
                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                            ),
                                                                                                          )
                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Preacher Curl'
                                                                                                            ? Text(
                                                                                                                '$preacher_curl_sets sets',
                                                                                                                textAlign: TextAlign.center,
                                                                                                                style: TextStyle(
                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                ),
                                                                                                              )
                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Hammer Curl'
                                                                                                                ? Text(
                                                                                                                    '$hammer_curl_sets sets',
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: TextStyle(
                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                    ),
                                                                                                                  )
                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Incline Curl'
                                                                                                                    ? Text(
                                                                                                                        '$incline_curl_sets sets',
                                                                                                                        textAlign: TextAlign.center,
                                                                                                                        style: TextStyle(
                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                        ),
                                                                                                                      )
                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Cable Curl'
                                                                                                                        ? Text(
                                                                                                                            '$cable_curl_sets sets',
                                                                                                                            textAlign: TextAlign.center,
                                                                                                                            style: TextStyle(
                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                            ),
                                                                                                                          )
                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Concentration Curl'
                                                                                                                            ? Text(
                                                                                                                                '$concentration_curl_sets sets',
                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                style: TextStyle(
                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                ),
                                                                                                                              )
                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Dumbell Curl'
                                                                                                                                ? Text(
                                                                                                                                    '$dumbell_curl_sets sets',
                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                    style: TextStyle(
                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                    ),
                                                                                                                                  )
                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Reverse Grip Barbell Curl'
                                                                                                                                    ? Text(
                                                                                                                                        '$reverse_grip_curl_sets sets',
                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                        style: TextStyle(
                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                        ),
                                                                                                                                      )
                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Drag Curl'
                                                                                                                                        ? Text(
                                                                                                                                            '$drag_curl_sets sets',
                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                            style: TextStyle(
                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                            ),
                                                                                                                                          )
                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Skullcrusher'
                                                                                                                                            ? Text(
                                                                                                                                                '$skullcrusher_sets sets',
                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                style: TextStyle(
                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                ),
                                                                                                                                              )
                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Close-grip Bench Press'
                                                                                                                                                ? Text(
                                                                                                                                                    '$close_grip_bench_press_sets sets',
                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                    style: TextStyle(
                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                    ),
                                                                                                                                                  )
                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Triceps Dip'
                                                                                                                                                    ? Text(
                                                                                                                                                        '$triceps_dip_sets sets',
                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                        style: TextStyle(
                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                        ),
                                                                                                                                                      )
                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Bench Dip'
                                                                                                                                                        ? Text(
                                                                                                                                                            '$bench_dip_sets sets',
                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                            style: TextStyle(
                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                            ),
                                                                                                                                                          )
                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Triceps Machine Dip'
                                                                                                                                                            ? Text(
                                                                                                                                                                '$triceps_machine_dip_sets sets',
                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                style: TextStyle(
                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                ),
                                                                                                                                                              )
                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Board Press'
                                                                                                                                                                ? Text(
                                                                                                                                                                    '$board_press_sets sets',
                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                    ),
                                                                                                                                                                  )
                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Dumbell Overhead Triceps Extension'
                                                                                                                                                                    ? Text(
                                                                                                                                                                        '$dumbell_overhead_extension_sets sets',
                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                        ),
                                                                                                                                                                      )
                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Rope Overhead Triceps Extension'
                                                                                                                                                                        ? Text(
                                                                                                                                                                            '$rope_overhead_extension_sets sets',
                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                            ),
                                                                                                                                                                          )
                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Single-Arm Cable Kick-Back'
                                                                                                                                                                            ? Text(
                                                                                                                                                                                '$single_arm_kickback_sets sets',
                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                ),
                                                                                                                                                                              )
                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Cable Push-Down'
                                                                                                                                                                                ? Text(
                                                                                                                                                                                    '$cable_push_down_sets sets',
                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                    ),
                                                                                                                                                                                  )
                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Plank'
                                                                                                                                                                                    ? Text(
                                                                                                                                                                                        '$plank_sets sets',
                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                        ),
                                                                                                                                                                                      )
                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Bicycle Crunch'
                                                                                                                                                                                        ? Text(
                                                                                                                                                                                            '$bicycle_crunch_sets sets',
                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                            ),
                                                                                                                                                                                          )
                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Side Plank'
                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                '$side_plank_sets sets',
                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                ),
                                                                                                                                                                                              )
                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Vertical Leg Crunch'
                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                    '$vertical_leg_crunch_sets sets',
                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                    ),
                                                                                                                                                                                                  )
                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Reverse Crunch'
                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                        '$reverse_crunch_sets sets',
                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                        ),
                                                                                                                                                                                                      )
                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Deadlift'
                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                            '$deadlift_sets sets',
                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                            ),
                                                                                                                                                                                                          )
                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Bent-over row'
                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                '$bent_over_row_sets sets',
                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                ),
                                                                                                                                                                                                              )
                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Pull-up'
                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                    '$pull_up_sets sets',
                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                  )
                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'T-Bar Row'
                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                        '$tbar_row_sets sets',
                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                      )
                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Seated Row'
                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                            '$seated_row_sets sets',
                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                          )
                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Single-Arm Smith Machine Row'
                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                '$single_arm_machine_row_sets sets',
                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                              )
                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Lat Pull-Down'
                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                    '$lat_pulldown_sets sets',
                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Single-Arm Dumbell Row'
                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                        '$single_arm_dumbell_row_sets sets',
                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Chest-Supported Row'
                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                            '$chest_supported_sets sets',
                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Standing Barbell Calf Raise'
                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                '$standing_barbell_calf_raise_sets sets',
                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Standing Dumbbell Calf Raise'
                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                    '$standing_dumbell_calf_raise_sets sets',
                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Seated Calf Raise (Leg Press Machine)'
                                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                                        '$seated_calf_raise_sets sets',
                                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Single-Leg Calf Raise'
                                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                                            '$single_leg_calf_raise_sets sets',
                                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Barbell Back Squat'
                                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                                '$barbell_back_squat_sets sets',
                                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Barbell Front Squat'
                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                    '$barbell_front_squat_sets sets',
                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Deadlift'
                                                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                                                        '$deadlift_sets sets',
                                                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Split Squat'
                                                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                                                            '$split_squat_sets sets',
                                                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Hack Squat'
                                                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                                                '$hack_squat_sets sets',
                                                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Lunge'
                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                    '$lunge_sets sets',
                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Leg Press'
                                                                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                                                                        '$leg_press_sets sets',
                                                                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Romanian Deadlift'
                                                                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                                                                            '$romanian_deadlift_sets sets',
                                                                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Leg Curl'
                                                                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                                                                '$leg_curl_sets sets',
                                                                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Leg Extension'
                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                    '$leg_extension_sets sets',
                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Jump rope'
                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                    '$jump_rope_sets sets',
                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Jumping jacks'
                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                    '$jumping_jack_sets sets',
                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Burpees'
                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                    '$burpees_sets sets',
                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Running'
                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                    '$running_sets sets',
                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Elliptical'
                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                    '$elliptical_sets sets',
                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Stair climber'
                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                    '$stair_climber_sets sets',
                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Exercise bike'
                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                    '$exercise_bike_sets sets',
                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Treadmill'
                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                    '$treadmill_sets sets',
                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Rowing Machine'
                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                    '$row_machine_sets sets',
                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Swimming'
                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                    '$swimming_sets sets',
                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                : Text(
                                                                                                                                                                                                                                                                                                    'Sets',
                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                  ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        setRepPicker(context,
                            title_text: 'How many reps',
                            minValue: 4,
                            maxValue: 30,
                            action:
                                '${Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index]}',
                            current_value: 10,
                            scale: 'reps',
                            measure: 'reps');
                      },
                      child: SizedBox(
                        height: const AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 40),
                        width: const AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 100),
                        child: Card(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Provider.of<sharedPrefs>(context, listen: false)
                                        .getSavedWeightsFromSharedPref(
                                            widget.activity_list)[index] ==
                                    'Barbell Bench Press'
                                ? Text(
                                    '$barbell_bench_press_reps reps',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Recoleta',
                                      fontSize: const AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 15),
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  )
                                : Provider.of<sharedPrefs>(context, listen: false)
                                            .getSavedWeightsFromSharedPref(
                                                widget.activity_list)[index] ==
                                        'Dumbell Bench Press'
                                    ? Text(
                                        '$dumbell_bench_press_reps reps',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Recoleta',
                                          fontSize: const AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 15),
                                          fontWeight: FontWeight.w600,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      )
                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(
                                                widget.activity_list)[index] ==
                                            'Incline Bench Press'
                                        ? Text(
                                            '$incline_bench_press_reps reps',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Recoleta',
                                              fontSize: const AdaptiveTextSize()
                                                  .getadaptiveTextSize(
                                                      context, 15),
                                              fontWeight: FontWeight.w600,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                          )
                                        : Provider.of<sharedPrefs>(context, listen: false)
                                                    .getSavedWeightsFromSharedPref(widget.activity_list)[index] ==
                                                'Decline Press'
                                            ? Text(
                                                '$decline_press_reps reps',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'Recoleta',
                                                  fontSize:
                                                      const AdaptiveTextSize()
                                                          .getadaptiveTextSize(
                                                              context, 15),
                                                  fontWeight: FontWeight.w600,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                              )
                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Machine Chest Press'
                                                ? Text(
                                                    '$machine_chest_press_reps reps',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontFamily: 'Recoleta',
                                                      fontSize:
                                                          const AdaptiveTextSize()
                                                              .getadaptiveTextSize(
                                                                  context, 15),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                                  )
                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Chest Fly'
                                                    ? Text(
                                                        '$chest_fly_reps reps',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Recoleta',
                                                          fontSize:
                                                              const AdaptiveTextSize()
                                                                  .getadaptiveTextSize(
                                                                      context,
                                                                      15),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                      )
                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Dumbell Pull-Over'
                                                        ? Text(
                                                            '$dumbell_pullover_reps reps',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Recoleta',
                                                              fontSize: const AdaptiveTextSize()
                                                                  .getadaptiveTextSize(
                                                                      context,
                                                                      15),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor,
                                                            ),
                                                          )
                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Machine Fly'
                                                            ? Text(
                                                                '$machine_fly_reps reps',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'Recoleta',
                                                                  fontSize: const AdaptiveTextSize()
                                                                      .getadaptiveTextSize(
                                                                          context,
                                                                          15),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Theme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                              )
                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Push Press'
                                                                ? Text(
                                                                    '$push_press_reps reps',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'Recoleta',
                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(
                                                                          context,
                                                                          15),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: Theme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  )
                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Military Press'
                                                                    ? Text(
                                                                        '$military_press_reps reps',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            TextStyle(
                                                                          fontFamily:
                                                                              'Recoleta',
                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(
                                                                              context,
                                                                              15),
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              Theme.of(context).primaryColor,
                                                                        ),
                                                                      )
                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Rear Delt Row'
                                                                        ? Text(
                                                                            '$rear_delt_row_reps reps',
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style:
                                                                                TextStyle(
                                                                              fontFamily: 'Recoleta',
                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                              fontWeight: FontWeight.w600,
                                                                              color: Theme.of(context).primaryColor,
                                                                            ),
                                                                          )
                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Seated Dumbell Press'
                                                                            ? Text(
                                                                                '$seated_dumbell_press_reps reps',
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(
                                                                                  fontFamily: 'Recoleta',
                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                  fontWeight: FontWeight.w600,
                                                                                  color: Theme.of(context).primaryColor,
                                                                                ),
                                                                              )
                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Seated Barbell Press'
                                                                                ? Text(
                                                                                    '$seated_barbell_press_reps reps',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: TextStyle(
                                                                                      fontFamily: 'Recoleta',
                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                      fontWeight: FontWeight.w600,
                                                                                      color: Theme.of(context).primaryColor,
                                                                                    ),
                                                                                  )
                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Upright Row'
                                                                                    ? Text(
                                                                                        '$upright_row_reps reps',
                                                                                        textAlign: TextAlign.center,
                                                                                        style: TextStyle(
                                                                                          fontFamily: 'Recoleta',
                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                          fontWeight: FontWeight.w600,
                                                                                          color: Theme.of(context).primaryColor,
                                                                                        ),
                                                                                      )
                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Arnold Press'
                                                                                        ? Text(
                                                                                            '$arnold_press_reps reps',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: TextStyle(
                                                                                              fontFamily: 'Recoleta',
                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                              fontWeight: FontWeight.w600,
                                                                                              color: Theme.of(context).primaryColor,
                                                                                            ),
                                                                                          )
                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Rear Delt Fly'
                                                                                            ? Text(
                                                                                                '$rear_delt_fly_reps reps',
                                                                                                textAlign: TextAlign.center,
                                                                                                style: TextStyle(
                                                                                                  fontFamily: 'Recoleta',
                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                ),
                                                                                              )
                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Lateral Raise'
                                                                                                ? Text(
                                                                                                    '$lateral_raise_reps reps',
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: TextStyle(
                                                                                                      fontFamily: 'Recoleta',
                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                    ),
                                                                                                  )
                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Front Raise'
                                                                                                    ? Text(
                                                                                                        '$front_raise_reps reps',
                                                                                                        textAlign: TextAlign.center,
                                                                                                        style: TextStyle(
                                                                                                          fontFamily: 'Recoleta',
                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                        ),
                                                                                                      )
                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Barbell Curl'
                                                                                                        ? Text(
                                                                                                            '$barbell_curl_reps reps',
                                                                                                            textAlign: TextAlign.center,
                                                                                                            style: TextStyle(
                                                                                                              fontFamily: 'Recoleta',
                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                              fontWeight: FontWeight.w600,
                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                            ),
                                                                                                          )
                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Preacher Curl'
                                                                                                            ? Text(
                                                                                                                '$preacher_curl_reps reps',
                                                                                                                textAlign: TextAlign.center,
                                                                                                                style: TextStyle(
                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                ),
                                                                                                              )
                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Hammer Curl'
                                                                                                                ? Text(
                                                                                                                    '$hammer_curl_reps reps',
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: TextStyle(
                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                    ),
                                                                                                                  )
                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Incline Curl'
                                                                                                                    ? Text(
                                                                                                                        '$incline_curl_reps reps',
                                                                                                                        textAlign: TextAlign.center,
                                                                                                                        style: TextStyle(
                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                        ),
                                                                                                                      )
                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Cable Curl'
                                                                                                                        ? Text(
                                                                                                                            '$cable_curl_reps reps',
                                                                                                                            textAlign: TextAlign.center,
                                                                                                                            style: TextStyle(
                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                            ),
                                                                                                                          )
                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Concentration Curl'
                                                                                                                            ? Text(
                                                                                                                                '$concentration_curl_reps reps',
                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                style: TextStyle(
                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                ),
                                                                                                                              )
                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Dumbell Curl'
                                                                                                                                ? Text(
                                                                                                                                    '$dumbell_curl_reps reps',
                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                    style: TextStyle(
                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                    ),
                                                                                                                                  )
                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Reverse Grip Barbell Curl'
                                                                                                                                    ? Text(
                                                                                                                                        '$reverse_grip_curl_reps reps',
                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                        style: TextStyle(
                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                        ),
                                                                                                                                      )
                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Drag Curl'
                                                                                                                                        ? Text(
                                                                                                                                            '$drag_curl_reps reps',
                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                            style: TextStyle(
                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                            ),
                                                                                                                                          )
                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Skullcrusher'
                                                                                                                                            ? Text(
                                                                                                                                                '$skullcrusher_reps reps',
                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                style: TextStyle(
                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                ),
                                                                                                                                              )
                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Close-grip Bench Press'
                                                                                                                                                ? Text(
                                                                                                                                                    '$close_grip_bench_press_reps reps',
                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                    style: TextStyle(
                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                    ),
                                                                                                                                                  )
                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Triceps Dip'
                                                                                                                                                    ? Text(
                                                                                                                                                        '$triceps_dip_reps reps',
                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                        style: TextStyle(
                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                        ),
                                                                                                                                                      )
                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Bench Dip'
                                                                                                                                                        ? Text(
                                                                                                                                                            '$bench_dip_reps reps',
                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                            style: TextStyle(
                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                            ),
                                                                                                                                                          )
                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Triceps Machine Dip'
                                                                                                                                                            ? Text(
                                                                                                                                                                '$triceps_machine_dip_reps reps',
                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                style: TextStyle(
                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                ),
                                                                                                                                                              )
                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Board Press'
                                                                                                                                                                ? Text(
                                                                                                                                                                    '$board_press_reps reps',
                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                    ),
                                                                                                                                                                  )
                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Dumbell Overhead Triceps Extension'
                                                                                                                                                                    ? Text(
                                                                                                                                                                        '$dumbell_overhead_extension_reps reps',
                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                        ),
                                                                                                                                                                      )
                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Rope Overhead Triceps Extension'
                                                                                                                                                                        ? Text(
                                                                                                                                                                            '$rope_overhead_extension_reps reps',
                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                            ),
                                                                                                                                                                          )
                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Single-Arm Cable Kick-Back'
                                                                                                                                                                            ? Text(
                                                                                                                                                                                '$single_arm_kickback_reps reps',
                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                ),
                                                                                                                                                                              )
                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Cable Push-Down'
                                                                                                                                                                                ? Text(
                                                                                                                                                                                    '$cable_push_down_reps reps',
                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                    ),
                                                                                                                                                                                  )
                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Plank'
                                                                                                                                                                                    ? Text(
                                                                                                                                                                                        '$plank_reps reps',
                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                        ),
                                                                                                                                                                                      )
                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Bicycle Crunch'
                                                                                                                                                                                        ? Text(
                                                                                                                                                                                            '$bicycle_crunch_reps reps',
                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                            ),
                                                                                                                                                                                          )
                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Side Plank'
                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                '$side_plank_reps reps',
                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                ),
                                                                                                                                                                                              )
                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Vertical Leg Crunch'
                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                    '$vertical_leg_crunch_reps reps',
                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                    ),
                                                                                                                                                                                                  )
                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Reverse Crunch'
                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                        '$reverse_crunch_reps reps',
                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                        ),
                                                                                                                                                                                                      )
                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Deadlift'
                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                            '$deadlift_reps reps',
                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                            ),
                                                                                                                                                                                                          )
                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Bent-over row'
                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                '$bent_over_row_reps reps',
                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                ),
                                                                                                                                                                                                              )
                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Pull-up'
                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                    '$pull_up_reps reps',
                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                  )
                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'T-Bar Row'
                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                        '$tbar_row_reps reps',
                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                      )
                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Seated Row'
                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                            '$seated_row_reps reps',
                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                          )
                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Single-Arm Smith Machine Row'
                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                '$single_arm_machine_row__reps reps',
                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                              )
                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Lat Pull-Down'
                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                    '$lat_pulldown__reps reps',
                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Single-Arm Dumbell Row'
                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                        '$single_arm_dumbell_row_reps reps',
                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Chest-Supported Row'
                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                            '$chest_supported_reps reps',
                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Standing Barbell Calf Raise'
                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                '$standing_barbell_calf_raise_reps reps',
                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Standing Dumbbell Calf Raise'
                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                    '$standing_dumbell_calf_raise_reps reps',
                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Seated Calf Raise (Leg Press Machine)'
                                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                                        '$seated_calf_raise_reps reps',
                                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Single-Leg Calf Raise'
                                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                                            '$single_leg_calf_raise_reps reps',
                                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Barbell Back Squat'
                                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                                '$barbell_back_squat_reps reps',
                                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Barbell Front Squat'
                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                    '$barbell_front_squat_reps reps',
                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Split Squat'
                                                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                                                        '$split_squat_reps reps',
                                                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Hack Squat'
                                                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                                                            '$hack_squat_reps reps',
                                                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Lunge'
                                                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                                                '$lunge_reps reps',
                                                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Leg Press'
                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                    '$leg_press_reps reps',
                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Romanian Deadlift'
                                                                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                                                                        '$romanian_deadlift_reps reps',
                                                                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Leg Curl'
                                                                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                                                                            '$leg_curl_reps reps',
                                                                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Leg Extension'
                                                                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                                                                '$leg_extension_reps reps',
                                                                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Jump rope'
                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                    '$jump_rope_reps reps',
                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Jumping jacks'
                                                                                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                                                                                        '$jumping_jack_reps reps',
                                                                                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Burpees'
                                                                                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                                                                                            '$burpees_reps reps',
                                                                                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Running'
                                                                                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                                                                                '$running_reps reps',
                                                                                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Elliptical'
                                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                                    '$elliptical_reps reps',
                                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Stair climber'
                                                                                                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                                                                                                        '$stair_climber_reps reps',
                                                                                                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Exercise bike'
                                                                                                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                                                                                                            '$exercise_bike_reps reps',
                                                                                                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Treadmill'
                                                                                                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                                                                                                '$treadmill_reps reps',
                                                                                                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Rowing Machine'
                                                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                                                    '$row_machine_reps reps',
                                                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Swimming'
                                                                                                                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                                                                                                                        '$swimming_reps reps',
                                                                                                                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                                                                                                                    : Text(
                                                                                                                                                                                                                                                                                                                                        'Rep',
                                                                                                                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                                                                                                                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                                                                                                      ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    setRepPicker(context,
                        title_text: 'How much weight',
                        action:
                            '${Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index]}',
                        minValue: 1,
                        maxValue: 300,
                        current_value: 3,
                        scale: 'kg',
                        measure: 'kg');
                  },
                  child: SizedBox(
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 80),
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 75),
                    child: Card(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Provider.of<sharedPrefs>(context, listen: false)
                                    .getSavedWeightsFromSharedPref(
                                        widget.activity_list)[index] ==
                                'Barbell Bench Press'
                            ? Text(
                                '$barbell_bench_press_weights kg',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Recoleta',
                                  fontSize: const AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 20),
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).primaryColor,
                                ),
                              )
                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(
                                        widget.activity_list)[index] ==
                                    'Dumbell Bench Press'
                                ? Text(
                                    '$dumbell_bench_press_weights kg',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Recoleta',
                                      fontSize: const AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 20),
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  )
                                : Provider.of<sharedPrefs>(context, listen: false)
                                            .getSavedWeightsFromSharedPref(
                                                widget.activity_list)[index] ==
                                        'Incline Bench Press'
                                    ? Text(
                                        '$incline_bench_press_weights kg',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Recoleta',
                                          fontSize: const AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 20),
                                          fontWeight: FontWeight.w600,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      )
                                    : Provider.of<sharedPrefs>(context, listen: false)
                                                .getSavedWeightsFromSharedPref(widget.activity_list)[index] ==
                                            'Decline Press'
                                        ? Text(
                                            '$decline_press_weights kg',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Recoleta',
                                              fontSize: const AdaptiveTextSize()
                                                  .getadaptiveTextSize(
                                                      context, 20),
                                              fontWeight: FontWeight.w600,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                          )
                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Machine Chest Press'
                                            ? Text(
                                                '$machine_chest_press_weights kg',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'Recoleta',
                                                  fontSize:
                                                      const AdaptiveTextSize()
                                                          .getadaptiveTextSize(
                                                              context, 20),
                                                  fontWeight: FontWeight.w600,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                              )
                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Chest Fly'
                                                ? Text(
                                                    '$chest_fly_weights kg',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontFamily: 'Recoleta',
                                                      fontSize:
                                                          const AdaptiveTextSize()
                                                              .getadaptiveTextSize(
                                                                  context, 20),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                                  )
                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Dumbell Pull-Over'
                                                    ? Text(
                                                        '$dumbell_pullover_weights kg',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Recoleta',
                                                          fontSize:
                                                              const AdaptiveTextSize()
                                                                  .getadaptiveTextSize(
                                                                      context,
                                                                      20),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                      )
                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Machine Fly'
                                                        ? Text(
                                                            '$machine_fly_weights kg',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Recoleta',
                                                              fontSize: const AdaptiveTextSize()
                                                                  .getadaptiveTextSize(
                                                                      context,
                                                                      20),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor,
                                                            ),
                                                          )
                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Push Press'
                                                            ? Text(
                                                                '$push_press_weights kg',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'Recoleta',
                                                                  fontSize: const AdaptiveTextSize()
                                                                      .getadaptiveTextSize(
                                                                          context,
                                                                          20),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Theme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                              )
                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Military Press'
                                                                ? Text(
                                                                    '$military_press_weights kg',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'Recoleta',
                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(
                                                                          context,
                                                                          20),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: Theme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  )
                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Rear Delt Row'
                                                                    ? Text(
                                                                        '$rear_delt_row_weights kg',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            TextStyle(
                                                                          fontFamily:
                                                                              'Recoleta',
                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(
                                                                              context,
                                                                              20),
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              Theme.of(context).primaryColor,
                                                                        ),
                                                                      )
                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Seated Dumbell Press'
                                                                        ? Text(
                                                                            '$seated_dumbell_press_weights kg',
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style:
                                                                                TextStyle(
                                                                              fontFamily: 'Recoleta',
                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                              fontWeight: FontWeight.w600,
                                                                              color: Theme.of(context).primaryColor,
                                                                            ),
                                                                          )
                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Seated Barbell Press'
                                                                            ? Text(
                                                                                '$seated_barbell_press_weights kg',
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(
                                                                                  fontFamily: 'Recoleta',
                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                  fontWeight: FontWeight.w600,
                                                                                  color: Theme.of(context).primaryColor,
                                                                                ),
                                                                              )
                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Upright Row'
                                                                                ? Text(
                                                                                    '$upright_row_weights kg',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: TextStyle(
                                                                                      fontFamily: 'Recoleta',
                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                      fontWeight: FontWeight.w600,
                                                                                      color: Theme.of(context).primaryColor,
                                                                                    ),
                                                                                  )
                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Arnold Press'
                                                                                    ? Text(
                                                                                        '$arnold_press_weights kg',
                                                                                        textAlign: TextAlign.center,
                                                                                        style: TextStyle(
                                                                                          fontFamily: 'Recoleta',
                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                          fontWeight: FontWeight.w600,
                                                                                          color: Theme.of(context).primaryColor,
                                                                                        ),
                                                                                      )
                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Rear Delt Fly'
                                                                                        ? Text(
                                                                                            '$rear_delt_fly_weights kg',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: TextStyle(
                                                                                              fontFamily: 'Recoleta',
                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                              fontWeight: FontWeight.w600,
                                                                                              color: Theme.of(context).primaryColor,
                                                                                            ),
                                                                                          )
                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Lateral Raise'
                                                                                            ? Text(
                                                                                                '$lateral_raise_weights kg',
                                                                                                textAlign: TextAlign.center,
                                                                                                style: TextStyle(
                                                                                                  fontFamily: 'Recoleta',
                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                ),
                                                                                              )
                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Front Raise'
                                                                                                ? Text(
                                                                                                    '$front_raise_weights kg',
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: TextStyle(
                                                                                                      fontFamily: 'Recoleta',
                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                    ),
                                                                                                  )
                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Barbell Curl'
                                                                                                    ? Text(
                                                                                                        '$barbell_curl_weights kg',
                                                                                                        textAlign: TextAlign.center,
                                                                                                        style: TextStyle(
                                                                                                          fontFamily: 'Recoleta',
                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                        ),
                                                                                                      )
                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Preacher Curl'
                                                                                                        ? Text(
                                                                                                            '$preacher_curl_weights kg',
                                                                                                            textAlign: TextAlign.center,
                                                                                                            style: TextStyle(
                                                                                                              fontFamily: 'Recoleta',
                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                              fontWeight: FontWeight.w600,
                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                            ),
                                                                                                          )
                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Hammer Curl'
                                                                                                            ? Text(
                                                                                                                '$hammer_curl_weights kg',
                                                                                                                textAlign: TextAlign.center,
                                                                                                                style: TextStyle(
                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                ),
                                                                                                              )
                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Incline Curl'
                                                                                                                ? Text(
                                                                                                                    '$incline_curl_weights kg',
                                                                                                                    textAlign: TextAlign.center,
                                                                                                                    style: TextStyle(
                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                    ),
                                                                                                                  )
                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Cable Curl'
                                                                                                                    ? Text(
                                                                                                                        '$cable_curl_weights kg',
                                                                                                                        textAlign: TextAlign.center,
                                                                                                                        style: TextStyle(
                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                        ),
                                                                                                                      )
                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Concentration Curl'
                                                                                                                        ? Text(
                                                                                                                            '$concentration_curl_weights kg',
                                                                                                                            textAlign: TextAlign.center,
                                                                                                                            style: TextStyle(
                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                            ),
                                                                                                                          )
                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Dumbell Curl'
                                                                                                                            ? Text(
                                                                                                                                '$dumbell_curl_weights kg',
                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                style: TextStyle(
                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                ),
                                                                                                                              )
                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Reverse Grip Barbell Curl'
                                                                                                                                ? Text(
                                                                                                                                    '$reverse_grip_curl_weights kg',
                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                    style: TextStyle(
                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                    ),
                                                                                                                                  )
                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Drag Curl'
                                                                                                                                    ? Text(
                                                                                                                                        '$drag_curl_weights kg',
                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                        style: TextStyle(
                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                        ),
                                                                                                                                      )
                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Skullcrusher'
                                                                                                                                        ? Text(
                                                                                                                                            '$skullcrusher_weights kg',
                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                            style: TextStyle(
                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                            ),
                                                                                                                                          )
                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Close-grip Bench Press'
                                                                                                                                            ? Text(
                                                                                                                                                '$close_grip_bench_press_weights kg',
                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                style: TextStyle(
                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                ),
                                                                                                                                              )
                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Triceps Dip'
                                                                                                                                                ? Text(
                                                                                                                                                    '$triceps_dip_weights kg',
                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                    style: TextStyle(
                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                    ),
                                                                                                                                                  )
                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Bench Dip'
                                                                                                                                                    ? Text(
                                                                                                                                                        '$bench_dip_weights kg',
                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                        style: TextStyle(
                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                        ),
                                                                                                                                                      )
                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Triceps Machine Dip'
                                                                                                                                                        ? Text(
                                                                                                                                                            '$triceps_machine_dip_weights kg',
                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                            style: TextStyle(
                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                            ),
                                                                                                                                                          )
                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Board Press'
                                                                                                                                                            ? Text(
                                                                                                                                                                '$board_press_weights kg',
                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                style: TextStyle(
                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                ),
                                                                                                                                                              )
                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Dumbell Overhead Triceps Extension'
                                                                                                                                                                ? Text(
                                                                                                                                                                    '$dumbell_overhead_extension_weights kg',
                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                    ),
                                                                                                                                                                  )
                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Rope Overhead Triceps Extension'
                                                                                                                                                                    ? Text(
                                                                                                                                                                        '$rope_overhead_extension_weights kg',
                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                        ),
                                                                                                                                                                      )
                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Single-Arm Cable Kick-Back'
                                                                                                                                                                        ? Text(
                                                                                                                                                                            '$single_arm_kickback_weights kg',
                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                            ),
                                                                                                                                                                          )
                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Cable Push-Down'
                                                                                                                                                                            ? Text(
                                                                                                                                                                                '$cable_push_down_weights kg',
                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                ),
                                                                                                                                                                              )
                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Plank'
                                                                                                                                                                                ? Text(
                                                                                                                                                                                    '$plank_weights kg',
                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                    ),
                                                                                                                                                                                  )
                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Bicycle Crunch'
                                                                                                                                                                                    ? Text(
                                                                                                                                                                                        '$bicycle_crunch_weights kg',
                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                        ),
                                                                                                                                                                                      )
                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Side Plank'
                                                                                                                                                                                        ? Text(
                                                                                                                                                                                            '$side_plank_weights kg',
                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                            ),
                                                                                                                                                                                          )
                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Vertical Leg Crunch'
                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                '$vertical_leg_crunch_weights kg',
                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                ),
                                                                                                                                                                                              )
                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Reverse Crunch'
                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                    '$reverse_crunch_weights kg',
                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                    ),
                                                                                                                                                                                                  )
                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Deadlift'
                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                        '$deadlift_weights kg',
                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                        ),
                                                                                                                                                                                                      )
                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Bent-over row'
                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                            '$bent_over_row_weights kg',
                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                            ),
                                                                                                                                                                                                          )
                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Pull-up'
                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                '$pull_up_weights kg',
                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                ),
                                                                                                                                                                                                              )
                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'T-Bar Row'
                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                    '$tbar_row_weights kg',
                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                  )
                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Seated Row'
                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                        '$seated_row_weights kg',
                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                      )
                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Single-Arm Smith Machine Row'
                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                            '$single_arm_machine_row_weights kg',
                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                          )
                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Lat Pull-Down'
                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                '$lat_pulldown_weights kg',
                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                              )
                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Single-Arm Dumbell Row'
                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                    '$single_arm_dumbell_row_weights kg',
                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Chest-Supported Row'
                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                        '$chest_supported_weights kg',
                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Standing Barbell Calf Raise'
                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                            '$standing_barbell_calf_raise_weights kg',
                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Standing Dumbbell Calf Raise'
                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                '$standing_dumbell_calf_raise_weights kg',
                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Seated Calf Raise (Leg Press Machine)'
                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                    '$seated_calf_raise_weights kg',
                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Single-Leg Calf Raise'
                                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                                        '$single_leg_calf_raise_weights kg',
                                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Barbell Back Squat'
                                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                                            '$barbell_back_squat_weights kg',
                                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Barbell Front Squat'
                                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                                '$barbell_front_squat_weights kg',
                                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Split Squat'
                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                    '$split_squat_weights kg',
                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Hack Squat'
                                                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                                                        '$hack_squat_weights kg',
                                                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Lunge'
                                                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                                                            '$lunge_weights kg',
                                                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Leg Press'
                                                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                                                '$leg_press_weights kg',
                                                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Romanian Deadlift'
                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                    '$romanian_deadlift_weights kg',
                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Leg Curl'
                                                                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                                                                        '$leg_curl_weights kg',
                                                                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Leg Extension'
                                                                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                                                                            '$leg_extension_weights kg',
                                                                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Jump rope'
                                                                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                                                                '$jump_rope_weights kg',
                                                                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Jumping jacks'
                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                    '$jumping_jack_weights kg',
                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Burpees'
                                                                                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                                                                                        '$burpees_weights kg',
                                                                                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Running'
                                                                                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                                                                                            '$running_weights kg',
                                                                                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Elliptical'
                                                                                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                                                                                '$elliptical_weights kg',
                                                                                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Stair climber'
                                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                                    '$stair_climber_weights kg',
                                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                                : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Exercise bike'
                                                                                                                                                                                                                                                                                                                    ? Text(
                                                                                                                                                                                                                                                                                                                        '$exercise_bike_weights kg',
                                                                                                                                                                                                                                                                                                                        textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                        style: TextStyle(
                                                                                                                                                                                                                                                                                                                          fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                                          fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                                          color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                                                                                                    : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Treadmill'
                                                                                                                                                                                                                                                                                                                        ? Text(
                                                                                                                                                                                                                                                                                                                            '$treadmill_weights kg',
                                                                                                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                            style: TextStyle(
                                                                                                                                                                                                                                                                                                                              fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                                              fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                                              color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                                                                                          )
                                                                                                                                                                                                                                                                                                                        : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Rowing Machine'
                                                                                                                                                                                                                                                                                                                            ? Text(
                                                                                                                                                                                                                                                                                                                                '$row_machine_weights kg',
                                                                                                                                                                                                                                                                                                                                textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                                style: TextStyle(
                                                                                                                                                                                                                                                                                                                                  fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                                                  fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                                                  color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                                                                                                              )
                                                                                                                                                                                                                                                                                                                            : Provider.of<sharedPrefs>(context, listen: false).getSavedWeightsFromSharedPref(widget.activity_list)[index] == 'Swimming'
                                                                                                                                                                                                                                                                                                                                ? Text(
                                                                                                                                                                                                                                                                                                                                    '$swimming_weights kg',
                                                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                                                                                                                                : Text(
                                                                                                                                                                                                                                                                                                                                    'kg',
                                                                                                                                                                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                                    style: TextStyle(
                                                                                                                                                                                                                                                                                                                                      fontFamily: 'Recoleta',
                                                                                                                                                                                                                                                                                                                                      fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                                                                                                                                                                                                                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                                                                                                                                                                                                                      color: Theme.of(context).primaryColor,
                                                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                                                  ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 2),
            ),
          ],
        ),
      ),
    );
  }
}
