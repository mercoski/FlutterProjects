// ignore_for_file: non_constant_identifier_names

import 'package:fitness_tracker/Utils/sharedPref.dart';
import 'package:fitness_tracker/Widgets/moves/time_series_chart.dart';
import 'package:flutter/material.dart';

List<TimeSeriesWeights> chest_data = [];

List<TimeSeriesWeights> shoulder_data = [];

List<TimeSeriesWeights> biceps_data = [];

List<TimeSeriesWeights> triceps_data = [];

List<TimeSeriesWeights> abs_data = [];

List<TimeSeriesWeights> back_data = [];

List<TimeSeriesWeights> calfs_data = [];

List<TimeSeriesWeights> upper_legs_data = [];

List<TimeSeriesWeights> cardio_data = [];

List<String> all_activities = [
  'Chest',
  'Shoulders',
  'Biceps',
  'Triceps',
  'Abs',
  'Back',
  'Calfs',
  'Upper Legs',
  'Cardio',
];

List<String> selected_muscle = [];

List<String> chest_activities = [
  'Barbell Bench Press',
  'Dumbell Bench Press',
  'Incline Bench Press',
  'Decline Press',
  'Machine Chest Press',
  'Chest Fly',
  'Dumbell Pull-Over',
  'Machine Fly'
];
List<String> shoulder_activities = [
  'Push Press',
  'Military Press',
  'Rear Delt Row',
  'Seated Dumbell Press',
  'Seated Barbell Press',
  'Upright Row',
  'Arnold Press',
  'Rear Delt Fly',
  'Lateral Raise',
  'Front Raise'
];
List<String> biceps_activities = [
  'Barbell Curl',
  'Preacher Curl',
  'Hammer Curl',
  'Incline Curl',
  'Cable Curl',
  'Concentration Curl',
  'Dumbell Curl',
  'Reverse Grip Barbell Curl',
  'Drag Curl'
];
List<String> triceps_activities = [
  'Skullcrusher',
  'Close-grip Bench Press',
  'Triceps Dip',
  'Bench Dip',
  'Triceps Machine Dip',
  'Board Press',
  'Dumbell Overhead Triceps Extension',
  'Rope Overhead Triceps Extension',
  'Single-Arm Cable Kick-Back',
  'Cable Push-Down'
];
List<String> abs_activities = [
  'Plank',
  'Bicycle Crunch',
  'Side Plank',
  'Vertical Leg Crunch',
  'Reverse Crunch'
];
List<String> back_activities = [
  'Deadlift',
  'Bent-over row',
  'Pull-up',
  'T-Bar Row',
  'Seated Row',
  'Single-Arm Smith Machine Row',
  'Lat Pull-Down',
  'Single-Arm Dumbell Row',
  'Chest-Supported Row'
];
List<String> calfs_activities = [
  'Standing Barbell Calf Raise',
  'Standing Dumbbell Calf Raise',
  'Seated Calf Raise (Leg Press Machine)',
  'Single-Leg Calf Raise'
];
List<String> upper_legs_activities = [
  'Barbell Back Squat',
  'Barbell Front Squat',
  'Deadlift',
  'Split Squat',
  'Hack Squat',
  'Lunge',
  'Leg Press',
  'Romanian Deadlift',
  'Leg Curl',
  'Leg Extension'
];
List<String> cardio_activities = [
  'Jump rope',
  'Jumping jacks',
  'Burpees',
  'Running',
  'Elliptical',
  'Stair climber',
  'Exercise bike',
  'Treadmill',
  'Rowing Machine',
  'Swimming'
];

List<String> selectedMuscle = [];
List<String> monday_activities = [];
List<String> tuesday_activities = [];
List<String> wednesday_activities = [];
List<String> thursday_activities = [];
List<String> friday_activities = [];
List<String> saturday_activities = [];
List<String> sunday_activities = [];

List<String> selected_chest_activities = [];

List<String> selected_shoulder_activities = [];
List<String> selected_biceps_activities = [];
List<String> selected_triceps_activities = [];
List<String> selected_abs_activities = [];
List<String> selected_back_activities = [];
List<String> selected_calfs_activities = [];
List<String> selected_upper_legs_activities = [];
List<String> selected_cardio_activities = [];

//------CHEST EXERCISES ----------//
int barbell_bench_press_sets = 1;
int barbell_bench_press_reps = 10;
int barbell_bench_press_weights = 50;

int dumbell_bench_press_sets = 1;
int dumbell_bench_press_reps = 10;
int dumbell_bench_press_weights = 25;

int incline_bench_press_sets = 1;
int incline_bench_press_reps = 10;
int incline_bench_press_weights = 50;

int decline_press_sets = 1;
int decline_press_reps = 10;
int decline_press_weights = 50;

int machine_chest_press_sets = 1;
int machine_chest_press_reps = 10;
int machine_chest_press_weights = 50;

int chest_fly_sets = 1;
int chest_fly_reps = 10;
int chest_fly_weights = 10;

int dumbell_pullover_sets = 1;
int dumbell_pullover_reps = 10;
int dumbell_pullover_weights = 20;

int machine_fly_sets = 1;
int machine_fly_reps = 10;
int machine_fly_weights = 20;

//------SHOULDER EXERCISES ----------//

int push_press_sets = 1;
int push_press_reps = 10;
int push_press_weights = 20;

int military_press_sets = 1;
int military_press_reps = 10;
int military_press_weights = 10;

int rear_delt_row_sets = 1;
int rear_delt_row_reps = 10;
int rear_delt_row_weights = 10;

int seated_dumbell_press_sets = 1;
int seated_dumbell_press_reps = 10;
int seated_dumbell_press_weights = 10;

int seated_barbell_press_sets = 1;
int seated_barbell_press_reps = 10;
int seated_barbell_press_weights = 20;

int upright_row_sets = 1;
int upright_row_reps = 10;
int upright_row_weights = 10;

int arnold_press_sets = 1;
int arnold_press_reps = 10;
int arnold_press_weights = 10;

int rear_delt_fly_sets = 1;
int rear_delt_fly_reps = 10;
int rear_delt_fly_weights = 10;

int lateral_raise_sets = 1;
int lateral_raise_reps = 10;
int lateral_raise_weights = 10;

int front_raise_sets = 1;
int front_raise_reps = 10;
int front_raise_weights = 10;

//------BICEPS EXERCISES ----------//

int barbell_curl_sets = 1;
int barbell_curl_reps = 10;
int barbell_curl_weights = 10;

int cable_curl_sets = 1;
int cable_curl_reps = 10;
int cable_curl_weights = 10;

int dumbell_curl_sets = 1;
int dumbell_curl_reps = 10;
int dumbell_curl_weights = 10;

int reverse_grip_curl_sets = 1;
int reverse_grip_curl_reps = 10;
int reverse_grip_curl_weights = 10;

int hammer_curl_sets = 1;
int hammer_curl_reps = 10;
int hammer_curl_weights = 10;

int incline_curl_sets = 1;
int incline_curl_reps = 10;
int incline_curl_weights = 10;

int concentration_curl_sets = 1;
int concentration_curl_reps = 10;
int concentration_curl_weights = 10;

int preacher_curl_sets = 1;
int preacher_curl_reps = 10;
int preacher_curl_weights = 10;

int drag_curl_sets = 1;
int drag_curl_reps = 10;
int drag_curl_weights = 10;

//------TRICEPS EXERCISES ----------//

int skullcrusher_sets = 1;
int skullcrusher_reps = 10;
int skullcrusher_weights = 10;

int close_grip_bench_press_sets = 1;
int close_grip_bench_press_reps = 10;
int close_grip_bench_press_weights = 20;

int triceps_dip_sets = 1;
int triceps_dip_reps = 10;
int triceps_dip_weights = 10;

int bench_dip_sets = 1;
int bench_dip_reps = 10;
int bench_dip_weights = 10;

int triceps_machine_dip_sets = 1;
int triceps_machine_dip_reps = 10;
int triceps_machine_dip_weights = 10;

int board_press_sets = 1;
int board_press_reps = 10;
int board_press_weights = 10;

int dumbell_overhead_extension_sets = 1;
int dumbell_overhead_extension_reps = 10;
int dumbell_overhead_extension_weights = 10;

int rope_overhead_extension_sets = 1;
int rope_overhead_extension_reps = 10;
int rope_overhead_extension_weights = 10;

int single_arm_kickback_sets = 1;
int single_arm_kickback_reps = 10;
int single_arm_kickback_weights = 10;

int cable_push_down_sets = 1;
int cable_push_down_reps = 10;
int cable_push_down_weights = 10;

//------ABS EXERCISES ----------//

int plank_sets = 1;
int plank_reps = 10;
int plank_weights = 10;

int bicycle_crunch_sets = 1;
int bicycle_crunch_reps = 10;
int bicycle_crunch_weights = 10;

int side_plank_sets = 1;
int side_plank_reps = 10;
int side_plank_weights = 10;

int vertical_leg_crunch_sets = 1;
int vertical_leg_crunch_reps = 10;
int vertical_leg_crunch_weights = 10;

int reverse_crunch_sets = 1;
int reverse_crunch_reps = 10;
int reverse_crunch_weights = 10;

//------BACK EXERCISES ----------//

int deadlift_sets = 1;
int deadlift_reps = 10;
int deadlift_weights = 70;

int bent_over_row_sets = 1;
int bent_over_row_reps = 10;
int bent_over_row_weights = 30;

int pull_up_sets = 1;
int pull_up_reps = 10;
int pull_up_weights = 30;

int tbar_row_sets = 1;
int tbar_row_reps = 10;
int tbar_row_weights = 30;

int seated_row_sets = 1;
int seated_row_reps = 10;
int seated_row_weights = 30;

int single_arm_machine_row_sets = 1;
int single_arm_machine_row__reps = 10;
int single_arm_machine_row_weights = 30;

int lat_pulldown_sets = 1;
int lat_pulldown__reps = 10;
int lat_pulldown_weights = 30;

int single_arm_dumbell_row_sets = 1;
int single_arm_dumbell_row_reps = 10;
int single_arm_dumbell_row_weights = 30;

int chest_supported_sets = 1;
int chest_supported_reps = 10;
int chest_supported_weights = 30;

//------CALF EXERCISES ----------//

int standing_barbell_calf_raise_sets = 1;
int standing_barbell_calf_raise_reps = 10;
int standing_barbell_calf_raise_weights = 30;

int standing_dumbell_calf_raise_sets = 1;
int standing_dumbell_calf_raise_reps = 10;
int standing_dumbell_calf_raise_weights = 30;

int seated_calf_raise_sets = 1;
int seated_calf_raise_reps = 10;
int seated_calf_raise_weights = 30;

int single_leg_calf_raise_sets = 1;
int single_leg_calf_raise_reps = 10;
int single_leg_calf_raise_weights = 30;

//------UPPER LEG EXERCISES ----------//

int barbell_back_squat_sets = 1;
int barbell_back_squat_reps = 10;
int barbell_back_squat_weights = 30;

int barbell_front_squat_sets = 1;
int barbell_front_squat_reps = 10;
int barbell_front_squat_weights = 30;

int split_squat_sets = 1;
int split_squat_reps = 10;
int split_squat_weights = 30;

int hack_squat_sets = 1;
int hack_squat_reps = 10;
int hack_squat_weights = 30;

int lunge_sets = 1;
int lunge_reps = 10;
int lunge_weights = 30;

int leg_press_sets = 1;
int leg_press_reps = 10;
int leg_press_weights = 30;

int romanian_deadlift_sets = 1;
int romanian_deadlift_reps = 10;
int romanian_deadlift_weights = 30;

int leg_curl_sets = 1;
int leg_curl_reps = 10;
int leg_curl_weights = 30;

int leg_extension_sets = 1;
int leg_extension_reps = 10;
int leg_extension_weights = 30;

//------CARDIO EXERCISES ----------//

int jump_rope_sets = 1;
int jump_rope_reps = 10;
int jump_rope_weights = 30;

int jumping_jack_sets = 1;
int jumping_jack_reps = 10;
int jumping_jack_weights = 30;

int burpees_sets = 1;
int burpees_reps = 10;
int burpees_weights = 30;

int running_sets = 1;
int running_reps = 10;
int running_weights = 30;

int elliptical_sets = 1;
int elliptical_reps = 10;
int elliptical_weights = 30;

int stair_climber_sets = 1;
int stair_climber_reps = 10;
int stair_climber_weights = 30;

int exercise_bike_sets = 1;
int exercise_bike_reps = 10;
int exercise_bike_weights = 30;

int treadmill_sets = 1;
int treadmill_reps = 10;
int treadmill_weights = 30;

int row_machine_sets = 1;
int row_machine_reps = 10;
int row_machine_weights = 30;

int swimming_sets = 1;
int swimming_reps = 10;
int swimming_weights = 30;


//TODO activitieste 1.gesture'a chest harici tüm egzersizler eklenecek
//TODO rep-set-weights sharedPreften okunacak, current value oradan verilecek.
