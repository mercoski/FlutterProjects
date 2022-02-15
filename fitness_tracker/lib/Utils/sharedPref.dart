import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sharedPrefs with ChangeNotifier {
  static SharedPreferences? _sharedPreferences;

  Future<void> createSharedPrefObject() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  void saveWeightsToSharedPref(String list_name, List<String> data) {
    _sharedPreferences?.setStringList(list_name, data);
  }

  void saveDatesToSharedPref(String list_name, List<String> data) {
    _sharedPreferences?.setStringList(list_name, data);
  }

  getSavedWeightsFromSharedPref(
    String list_name,
  ) {
    return _sharedPreferences?.get(list_name);
  }

  getSavedListLenght(String list_name) {
    return _sharedPreferences?.getStringList(list_name)?.length;
  }

  clearlist(String list_name) {
    _sharedPreferences?.getStringList(list_name)?.clear();
  }

  clearlistwithindex(String list_name, int index) {
    _sharedPreferences?.getStringList(list_name)?.removeAt(index);
  }

  Future<void> loadThemeDataFromPref() async {
    await createSharedPrefObject();
    saveWeightsToSharedPref('monday_activities', ['Rest Day']);
    saveWeightsToSharedPref('tuesday_activities', ['Rest Day']);
    saveWeightsToSharedPref('wednesday_activities', ['Rest Day']);
    saveWeightsToSharedPref('thursday_activities', ['Rest Day']);
    saveWeightsToSharedPref('friday_activities', ['Rest Day']);
    saveWeightsToSharedPref('saturday_activities', ['Rest Day']);
    saveWeightsToSharedPref('sunday_activities', ['Rest Day']);
  }
}
