import 'package:flutter/material.dart';

class SelectedMuscle with ChangeNotifier {
  List<String> selectedMuscle = [];
  List<String> monday_activities = [];
  List<String> tuesday_activities = [];
  List<String> wednesday_activities = [];
  List<String> thursday_activities = [];
  List<String> friday_activities = [];
  List<String> saturday_activities = [];
  List<String> sunday_activities = [];

  void setSelectedMuscle(String selected) {
    selectedMuscle.add(selected);
    notifyListeners();
  }

  void removeSelectedMuscle(String selected) {
    selectedMuscle.remove(selected);
    notifyListeners();
  }
}
