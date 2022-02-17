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
  'Dumbbell Bench Press',
  'Smith Machine Incline Press',
  'Incline Dumbbell Flye',
  'Cable Crossover',
  'Incline Dumbbell Press',
  'Chest Press Machine',
  'Dumbbell Fly',
  'Low-Cable Crossover',
  'Low-Incline Press',
  'Speed Bench Press',
  'Landmine Press',
  'Floor Press',
  'Prone Flye',
  'Pullover',
  'Plate Pressout',
  '3-Way Fly',
  'Pushup',
  '3-Way Finisher',
  'One-Armed Medicine Ball Pushup',
  'Medicine Ball Pushup Drop n Pop',
  'Close-Grip Pushup',
  'Medicine Ball Crossover Pushup',
  'Plyo Pushup',
  'Wide-Grip Pushup',
  'Band-Resisted Push Up with Feet Elevated',
  'Band-Resisted Flye',
  'Triceps Extension',
  'Pec Deck',
  'Wide-Grip Dips',
];
List<String> shoulder_activities = [
  'Barbell Standing Press',
  'Seated Dumbbell Press',
  'Arnold Press',
  'Lateral Raise',
  'Half-kneeling Archer Row',
  'Bent-over Reverse Fly',
  'Upright Row',
  'Front Raises',
  '3-Way Shoulder Raise',
  'Shrugs'
];
List<String> biceps_activities = [
  'Barbell Curl',
  'EZ-Bar Preacher Curl',
  'Hammer Curl',
  'Incline Dumbbell Curl',
  'Facing-Away Cable Curl',
  'Cable Curl',
  'Concentration Curl',
  'Cable Concentration Curl',
  'High Cable Curl',
  'Cable Hammer Curl',
  'Dual Cable Preacher Curl',
];
List<String> triceps_activities = [
  'Triangle Push-up',
  'Kickbacks',
  'Dips',
  'Overhead Triceps Extensions',
  'Rope Pushdowns',
  'Bar Pushdowns',
  'Lying Barbell Triceps Extensions',
  'Closed-grip Bench Press'
];
List<String> abs_activities = [
  'Reverse Crunch',
  'High To Low Cable Woodchoppers',
  'Weighted Crunches',
  'Serratus Jabs',
];
List<String> back_activities = [
  'Lat pull-down',
  'Seated row',
  'Bent-over row',
  'Inverted row',
  'Pull-up',
  'Chin-up',
  'TRX row',
  'I-Y-T raises'
];
List<String> calfs_activities = [
  'Donkey raises',
  'Standing one-leg raises',
  'Standing two-leg raises',
  'Seated raises'
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
  'Leg Curl'
];
List<String> cardio_activities = [
  'Jump rope',
  'Jumping jacks',
  'Burpees',
  'Running',
  'Squat jumps',
  'Elliptical',
  'Stair climber',
  'Exercise bike',
  'Treadmill',
  'Rowing machine',
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
