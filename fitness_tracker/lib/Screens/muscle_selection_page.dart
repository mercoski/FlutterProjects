import 'dart:io';

import 'package:fitness_tracker/Models/move_data.dart';
import 'package:fitness_tracker/Models/selected_muscle.dart';
import 'package:fitness_tracker/Screens/create_plan_page.dart';
import 'package:fitness_tracker/Utils/AdaptiveScreenSize.dart';
import 'package:fitness_tracker/Utils/AdaptiveTextSize.dart';
import 'package:fitness_tracker/Utils/sharedPref.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> muscleSelectionPage(BuildContext context,
    {required String title_text,
    required List<String> activity_list,
    required String day}) async {
  print(selected_chest_activities);
  return showDialog<void>(
    barrierColor: Colors.white30,
    context: context,
    barrierDismissible: false, // user must tap button!
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
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 500),
            child: Column(
              children: [
                Container(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(
                          context, (50 * all_activities.length)),
                  width: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 150),
                  child: ListView.builder(
                    itemCount: all_activities.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            Provider.of<SelectedMuscle>(context, listen: false)
                                    .selectedMuscle
                                    .contains('${all_activities[index]}')
                                ? Provider.of<SelectedMuscle>(context,
                                        listen: false)
                                    .selectedMuscle
                                    .remove('${all_activities[index]}')
                                : Provider.of<SelectedMuscle>(context,
                                        listen: false)
                                    .selectedMuscle
                                    .add('${all_activities[index]}');
                          });
                        },
                        child: Container(
                          height: const AdaptiveScreenSize()
                              .getadaptiveScreenSizeHeight(context, 50),
                          width: const AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 150),
                          child: Card(
                            color: Provider.of<SelectedMuscle>(context,
                                        listen: false)
                                    .selectedMuscle
                                    .contains('${all_activities[index]}')
                                ? Colors.green[600]
                                : Theme.of(context).primaryColor,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                all_activities[index],
                                style: TextStyle(
                                  fontFamily: 'Recoleta',
                                  fontSize: const AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 15),
                                  fontWeight: FontWeight.w600,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
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
                          selected_abs_activities.clear();
                          selected_back_activities.clear();
                          selected_biceps_activities.clear();
                          selected_calfs_activities.clear();
                          selected_cardio_activities.clear();
                          selected_chest_activities.clear();
                          selected_shoulder_activities.clear();
                          selected_triceps_activities.clear();
                          selected_upper_legs_activities.clear();
                          Navigator.pop(context);
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
                            activity_list.clear();
                            activity_list.addAll(Provider.of<SelectedMuscle>(
                                    context,
                                    listen: false)
                                .selectedMuscle);

                            selected_abs_activities.clear();
                            selected_back_activities.clear();
                            selected_biceps_activities.clear();
                            selected_calfs_activities.clear();
                            selected_cardio_activities.clear();
                            selected_chest_activities.clear();
                            selected_shoulder_activities.clear();
                            selected_triceps_activities.clear();
                            selected_upper_legs_activities.clear();
                            print(selected_chest_activities);
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    settings: RouteSettings(),
                                    builder: (context) => CreatePlanPage()));
                            Provider.of<SelectedMuscle>(context, listen: false)
                                .selectedMuscle
                                .clear();
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
