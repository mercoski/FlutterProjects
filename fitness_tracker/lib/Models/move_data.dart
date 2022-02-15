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

List<String> shoulder_activities = [];
List<String> biceps_activities = [];
List<String> triceps_activities = [];
List<String> abs_activities = [];
List<String> back_activities = [];
List<String> calfs_activities = [];
List<String> upper_legs_activities = [];
List<String> cardio_activities = [];
