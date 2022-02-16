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
    return _sharedPreferences?.getStringList(list_name);
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

    getSavedListLenght('monday_activities') == null
        ? saveWeightsToSharedPref('monday_activities', ['Rest Day'])
        : getSavedWeightsFromSharedPref('monday_activities');

    getSavedListLenght('tuesday_activities') == null
        ? saveWeightsToSharedPref('tuesday_activities', ['Rest Day'])
        : getSavedWeightsFromSharedPref('tuesday_activities');

    getSavedListLenght('wednesday_activities') == null
        ? saveWeightsToSharedPref('wednesday_activities', ['Rest Day'])
        : getSavedWeightsFromSharedPref('wednesday_activities');

    getSavedListLenght('thursday_activities') == null
        ? saveWeightsToSharedPref('thursday_activities', ['Rest Day'])
        : getSavedWeightsFromSharedPref('thursday_activities');

    getSavedListLenght('friday_activities') == null
        ? saveWeightsToSharedPref('friday_activities', ['Rest Day'])
        : getSavedWeightsFromSharedPref('friday_activities');

    getSavedListLenght('saturday_activities') == null
        ? saveWeightsToSharedPref('saturday_activities', ['Rest Day'])
        : getSavedWeightsFromSharedPref('saturday_activities');

    getSavedListLenght('sunday_activities') == null
        ? saveWeightsToSharedPref('sunday_activities', ['Rest Day'])
        : getSavedWeightsFromSharedPref('sunday_activities');
  }
}
