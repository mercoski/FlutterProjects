import 'dart:io';

import 'package:fitness_tracker/Models/move_data.dart';
import 'package:fitness_tracker/Models/selected_muscle.dart';
import 'package:fitness_tracker/Screens/create_plan_page.dart';
import 'package:fitness_tracker/Screens/current_stats_page.dart';
import 'package:fitness_tracker/Screens/program.dart';
import 'package:fitness_tracker/Utils/AdaptiveScreenSize.dart';
import 'package:fitness_tracker/Utils/AdaptiveTextSize.dart';
import 'package:fitness_tracker/Utils/sharedPref.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';

Future<void> setRepPicker(BuildContext context,
    {required String title_text,
    required int minValue,
    required int maxValue,
    required int current_value,
    required String action,
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
                                  builder: (context) => ProgramPage()));
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
                            //*Chest Exercises
                            if (measure == 'reps' &&
                                action == 'Barbell Bench Press') {
                              barbell_bench_press_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Barbell Bench Press') {
                              barbell_bench_press_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Barbell Bench Press') {
                              barbell_bench_press_weights = current_value;
                            }
                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Dumbell Bench Press') {
                              dumbell_bench_press_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Dumbell Bench Press') {
                              dumbell_bench_press_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Dumbell Bench Press') {
                              dumbell_bench_press_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Incline Bench Press') {
                              incline_bench_press_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Incline Bench Press') {
                              incline_bench_press_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Incline Bench Press') {
                              incline_bench_press_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Decline Press') {
                              decline_press_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Decline Press') {
                              decline_press_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Decline Press') {
                              decline_press_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Machine Chest Press') {
                              decline_press_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Machine Chest Press') {
                              decline_press_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Machine Chest Press') {
                              decline_press_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Chest Fly') {
                              chest_fly_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Chest Fly') {
                              chest_fly_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Chest Fly') {
                              chest_fly_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Dumbell Pull-Over') {
                              dumbell_pullover_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Dumbell Pull-Over') {
                              dumbell_bench_press_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Dumbell Pull-Over') {
                              dumbell_pullover_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Machine Fly') {
                              machine_fly_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Machine Fly') {
                              machine_fly_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Machine Fly') {
                              machine_fly_weights = current_value;
                            }

                            //Shoulder Exercises

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Push Press') {
                              push_press_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Push Press') {
                              push_press_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Push Press') {
                              push_press_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Military Press') {
                              military_press_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Military Press') {
                              military_press_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Military Press') {
                              military_press_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Rear Delt Row') {
                              rear_delt_row_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Rear Delt Row') {
                              rear_delt_row_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Rear Delt Row') {
                              rear_delt_row_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Seated Dumbell Press') {
                              seated_dumbell_press_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Seated Dumbell Press') {
                              seated_dumbell_press_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Seated Dumbell Press') {
                              seated_dumbell_press_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Seated Barbell Press') {
                              seated_barbell_press_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Seated Barbell Press') {
                              seated_barbell_press_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Seated Barbell Press') {
                              seated_barbell_press_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Upright Row') {
                              upright_row_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Upright Row') {
                              upright_row_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Upright Row') {
                              upright_row_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Arnold Press') {
                              arnold_press_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Arnold Press') {
                              arnold_press_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Arnold Press') {
                              arnold_press_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Rear Delt Fly') {
                              rear_delt_fly_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Rear Delt Fly') {
                              rear_delt_fly_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Rear Delt Fly') {
                              rear_delt_fly_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Lateral Raise') {
                              lateral_raise_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Lateral Raise') {
                              lateral_raise_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Lateral Raise') {
                              lateral_raise_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Front Raise') {
                              front_raise_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Front Raise') {
                              front_raise_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Front Raise') {
                              front_raise_weights = current_value;
                            }

                            // * Biceps Activities
                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Barbell Curl') {
                              barbell_curl_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Barbell Curl') {
                              barbell_curl_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Barbell Curl') {
                              barbell_curl_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Preacher Curl') {
                              preacher_curl_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Preacher Curl') {
                              preacher_curl_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Preacher Curl') {
                              preacher_curl_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Hammer Curl') {
                              hammer_curl_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Hammer Curl') {
                              hammer_curl_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Hammer Curl') {
                              hammer_curl_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Incline Curl') {
                              incline_curl_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Incline Curl') {
                              incline_curl_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Incline Curl') {
                              incline_curl_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Cable Curl') {
                              cable_curl_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Cable Curl') {
                              cable_curl_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Cable Curl') {
                              cable_curl_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Concentration Curl') {
                              concentration_curl_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Concentration Curl') {
                              concentration_curl_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Concentration Curl') {
                              concentration_curl_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Dumbell Curl') {
                              dumbell_curl_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Dumbell Curl') {
                              dumbell_curl_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Dumbell Curl') {
                              dumbell_curl_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Reverse Grip Barbell Curl') {
                              reverse_grip_curl_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Reverse Grip Barbell Curl') {
                              reverse_grip_curl_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Reverse Grip Barbell Curl') {
                              reverse_grip_curl_weights = current_value;
                            }
                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Drag Curl') {
                              drag_curl_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Drag Curl') {
                              drag_curl_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Drag Curl') {
                              drag_curl_weights = current_value;
                            }

                            // * Triceps

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Skullcrusher') {
                              skullcrusher_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Skullcrusher') {
                              skullcrusher_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Skullcrusher') {
                              skullcrusher_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Close-grip Bench Press') {
                              close_grip_bench_press_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Close-grip Bench Press') {
                              close_grip_bench_press_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Close-grip Bench Press') {
                              close_grip_bench_press_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Triceps Dip') {
                              triceps_dip_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Triceps Dip') {
                              triceps_dip_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Triceps Dip') {
                              triceps_dip_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Bench Dip') {
                              bench_dip_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Bench Dip') {
                              bench_dip_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Bench Dip') {
                              bench_dip_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Triceps Machine Dip') {
                              triceps_machine_dip_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Triceps Machine Dip') {
                              triceps_machine_dip_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Triceps Machine Dip') {
                              triceps_machine_dip_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Board Press') {
                              board_press_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Board Press') {
                              board_press_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Board Press') {
                              board_press_weights = current_value;
                            }
                            //------------------------------
                            else if (measure == 'reps' &&
                                action ==
                                    'Dumbell Overhead Triceps Extension') {
                              dumbell_overhead_extension_reps = current_value;
                            } else if (measure == 'sets' &&
                                action ==
                                    'Dumbell Overhead Triceps Extension') {
                              dumbell_overhead_extension_sets = current_value;
                            } else if (measure == 'kg' &&
                                action ==
                                    'Dumbell Overhead Triceps Extension') {
                              dumbell_overhead_extension_weights =
                                  current_value;
                            }
                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Rope Overhead Triceps Extension') {
                              rope_overhead_extension_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Rope Overhead Triceps Extension') {
                              rope_overhead_extension_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Rope Overhead Triceps Extension') {
                              rope_overhead_extension_weights = current_value;
                            }
                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Single-Arm Cable Kick-Back') {
                              single_arm_kickback_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Single-Arm Cable Kick-Back') {
                              single_arm_kickback_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Single-Arm Cable Kick-Back') {
                              single_arm_kickback_weights = current_value;
                            }
                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Cable Push-Down') {
                              cable_push_down_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Cable Push-Down') {
                              cable_push_down_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Cable Push-Down') {
                              cable_push_down_weights = current_value;
                            }

                            // * Abs

                            //------------------------------
                            else if (measure == 'reps' && action == 'Plank') {
                              plank_reps = current_value;
                            } else if (measure == 'sets' && action == 'Plank') {
                              plank_sets = current_value;
                            } else if (measure == 'kg' && action == 'Plank') {
                              plank_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Bicycle Crunch') {
                              bicycle_crunch_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Bicycle Crunch') {
                              bicycle_crunch_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Bicycle Crunch') {
                              bicycle_crunch_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Side Plank') {
                              side_plank_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Side Plank') {
                              side_plank_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Side Plank') {
                              side_plank_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Vertical Leg Crunch') {
                              vertical_leg_crunch_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Vertical Leg Crunch') {
                              vertical_leg_crunch_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Vertical Leg Crunch') {
                              vertical_leg_crunch_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Reverse Crunch') {
                              reverse_crunch_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Reverse Crunch') {
                              reverse_crunch_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Reverse Crunch') {
                              reverse_crunch_weights = current_value;
                            }

                            // * Back

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Deadlift') {
                              deadlift_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Deadlift') {
                              deadlift_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Deadlift') {
                              deadlift_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Bent-over row') {
                              bent_over_row_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Bent-over row') {
                              bent_over_row_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Bent-over row') {
                              bent_over_row_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' && action == 'Pull-up') {
                              pull_up_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Pull-up') {
                              pull_up_sets = current_value;
                            } else if (measure == 'kg' && action == 'Pull-up') {
                              pull_up_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'T-Bar Row') {
                              tbar_row_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'T-Bar Row') {
                              tbar_row_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'T-Bar Row') {
                              tbar_row_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Seated Row') {
                              seated_row_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Seated Row') {
                              seated_row_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Seated Row') {
                              seated_row_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Single-Arm Smith Machine Row') {
                              single_arm_machine_row__reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Single-Arm Smith Machine Row') {
                              single_arm_machine_row_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Single-Arm Smith Machine Row') {
                              single_arm_machine_row_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Lat Pull-Down') {
                              lat_pulldown__reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Lat Pull-Down') {
                              lat_pulldown_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Lat Pull-Down') {
                              lat_pulldown_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Single-Arm Dumbell Row') {
                              single_arm_dumbell_row_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Single-Arm Dumbell Row') {
                              single_arm_dumbell_row_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Single-Arm Dumbell Row') {
                              single_arm_dumbell_row_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Chest-Supported Row') {
                              chest_supported_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Chest-Supported Row') {
                              chest_supported_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Chest-Supported Row') {
                              chest_supported_weights = current_value;
                            }

                            // * Calfs
                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Standing Barbell Calf Raise') {
                              standing_barbell_calf_raise_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Standing Barbell Calf Raise') {
                              standing_barbell_calf_raise_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Standing Barbell Calf Raise') {
                              standing_barbell_calf_raise_weights =
                                  current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Standing Dumbbell Calf Raise') {
                              standing_dumbell_calf_raise_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Standing Dumbbell Calf Raise') {
                              standing_dumbell_calf_raise_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Standing Dumbbell Calf Raise') {
                              standing_dumbell_calf_raise_weights =
                                  current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action ==
                                    'Seated Calf Raise (Leg Press Machine)') {
                              seated_calf_raise_reps = current_value;
                            } else if (measure == 'sets' &&
                                action ==
                                    'Seated Calf Raise (Leg Press Machine)') {
                              seated_calf_raise_sets = current_value;
                            } else if (measure == 'kg' &&
                                action ==
                                    'Seated Calf Raise (Leg Press Machine)') {
                              seated_calf_raise_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Single-Leg Calf Raise') {
                              single_leg_calf_raise_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Single-Leg Calf Raise') {
                              single_leg_calf_raise_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Single-Leg Calf Raise') {
                              single_leg_calf_raise_weights = current_value;
                            }

                            //* Upper Legs
                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Barbell Back Squat') {
                              barbell_back_squat_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Barbell Back Squat') {
                              barbell_back_squat_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Barbell Back Squat') {
                              barbell_back_squat_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Barbell Front Squat') {
                              barbell_front_squat_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Barbell Front Squat') {
                              barbell_front_squat_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Barbell Front Squat') {
                              barbell_front_squat_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Deadlift') {
                              deadlift_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Deadlift') {
                              deadlift_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Deadlift') {
                              deadlift_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Split Squat') {
                              split_squat_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Split Squat') {
                              split_squat_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Split Squat') {
                              split_squat_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Hack Squat') {
                              hack_squat_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Hack Squat') {
                              hack_squat_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Hack Squat') {
                              hack_squat_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' && action == 'Lunge') {
                              lunge_reps = current_value;
                            } else if (measure == 'sets' && action == 'Lunge') {
                              lunge_sets = current_value;
                            } else if (measure == 'kg' && action == 'Lunge') {
                              lunge_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Leg Press') {
                              leg_press_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Leg Press') {
                              leg_press_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Leg Press') {
                              leg_press_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Romanian Deadlift') {
                              romanian_deadlift_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Romanian Deadlift') {
                              romanian_deadlift_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Romanian Deadlift') {
                              romanian_deadlift_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Leg Curl') {
                              leg_curl_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Leg Curl') {
                              leg_curl_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Leg Curl') {
                              leg_curl_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Leg Extension') {
                              leg_extension_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Leg Extension') {
                              leg_extension_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Leg Extension') {
                              leg_extension_weights = current_value;
                            }

                            // * Cardio
                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Jump rope') {
                              jump_rope_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Jump rope') {
                              jump_rope_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Jump rope') {
                              jump_rope_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Jumping jacks') {
                              jumping_jack_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Jumping jacks') {
                              jumping_jack_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Jumping jacks') {
                              jumping_jack_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' && action == 'Burpees') {
                              burpees_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Burpees') {
                              burpees_sets = current_value;
                            } else if (measure == 'kg' && action == 'Burpees') {
                              burpees_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' && action == 'Running') {
                              running_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Running') {
                              running_sets = current_value;
                            } else if (measure == 'kg' && action == 'Running') {
                              running_weights = current_value;
                            }

                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Elliptical') {
                              elliptical_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Elliptical') {
                              elliptical_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Elliptical') {
                              elliptical_weights = current_value;
                            }
                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Stair climber') {
                              stair_climber_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Stair climber') {
                              stair_climber_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Stair climber') {
                              stair_climber_weights = current_value;
                            }
                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Exercise bike') {
                              exercise_bike_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Exercise bike') {
                              exercise_bike_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Exercise bike') {
                              exercise_bike_weights = current_value;
                            }
                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Treadmill') {
                              treadmill_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Treadmill') {
                              treadmill_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Treadmill') {
                              treadmill_weights = current_value;
                            }
                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Rowing Machine') {
                              row_machine_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Rowing Machine') {
                              row_machine_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Rowing Machine') {
                              row_machine_weights = current_value;
                            }
                            //------------------------------
                            else if (measure == 'reps' &&
                                action == 'Swimming') {
                              swimming_reps = current_value;
                            } else if (measure == 'sets' &&
                                action == 'Swimming') {
                              swimming_sets = current_value;
                            } else if (measure == 'kg' &&
                                action == 'Swimming') {
                              swimming_weights = current_value;
                            }

                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    settings: const RouteSettings(),
                                    builder: (context) => ProgramPage()));
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
