import 'package:flutter/material.dart';

class SelectedMuscle with ChangeNotifier {
  List<String> selectedMuscle = [];

  void setSelectedMuscle(String selected) {
    selectedMuscle.add(selected);
    notifyListeners();
  }

  void removeSelectedMuscle(String selected) {
    selectedMuscle.remove(selected);
    notifyListeners();
  }
}
