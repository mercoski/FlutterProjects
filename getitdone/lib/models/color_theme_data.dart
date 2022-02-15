import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ColorThemeData with ChangeNotifier {
  static SharedPreferences? _sharedPreferences;
  bool? selected;

  ThemeData redTheme = ThemeData(
      primaryColor: Colors.red,
      accentColor: Colors.red,
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.red,
      appBarTheme: const AppBarTheme(color: Colors.red),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: const TextTheme(
          subtitle1: TextStyle(color: Colors.black),
          headline3: TextStyle(color: Colors.black)));

  ThemeData darkTheme = ThemeData(
      primaryColor: Colors.black,
      accentColor: Colors.black,
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(color: Colors.black),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: const TextTheme(
          subtitle1: TextStyle(color: Colors.white),
          headline3: TextStyle(color: Colors.white)));

  ThemeData _selectedThemeData = ThemeData(
      primaryColor: Colors.red,
      accentColor: Colors.red,
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.red,
      appBarTheme: const AppBarTheme(color: Colors.red),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: const TextTheme(
          subtitle1: TextStyle(color: Colors.black),
          headline3: TextStyle(color: Colors.black)));

  void switchTheme() {
    _selectedThemeData =
        _sharedPreferences?.getBool('themeData') == null ? redTheme : darkTheme;
    saveThemeToSharedPref(selected!);
    print(_sharedPreferences?.getBool('themeData'));
    notifyListeners();
  }

  ThemeData get selectedThemeData => _selectedThemeData;

  Future<void> createSharedPrefObject() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  void saveThemeToSharedPref(bool value) {
    _sharedPreferences?.setBool('themeData', value);
  }

  Future<void> loadThemeDataFromPref() async {
    await createSharedPrefObject();
    selected = _sharedPreferences?.getBool('themeData') == null
        ? false
        : _sharedPreferences?.getBool('themeData');
  }
}
