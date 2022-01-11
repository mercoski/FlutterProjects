import 'package:flutter/material.dart';

class BottomNav with ChangeNotifier {
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void setOnItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  int getOnItemTapped(int index) {
    return selectedIndex;
  }
}
