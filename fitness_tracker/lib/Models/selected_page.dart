import 'package:flutter/material.dart';

class SelectedPage with ChangeNotifier {
  String selectedPage = 'Chest';

  void setSelected(String selected) {
    selectedPage = selected;
    notifyListeners();
  }
}
