import 'package:flutter/material.dart';

class BottomNav with ChangeNotifier {
  late int selectedIndex = 0;

  void setOnItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  int getOnItemTapped(int index) {
    return selectedIndex;
  }
}
