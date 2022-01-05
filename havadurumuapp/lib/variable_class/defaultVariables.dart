import 'package:flutter/material.dart';

class DefaultVariables with ChangeNotifier {
  String defaultState = 'london';
  int defaultTemp = -999;
  List sonuc = [];
  int woeid = 2343732;
  String default_weather_abbr = 'c';
  double lattitude = 2.0;
  double longtitude = 3.0;
  List temps = [0, 0, 0, 0, 0];
  List dates = [
    'a',
    'a',
    'a',
    'a',
    'a',
  ];
  List distance = [];
  List weather_abbs_forcast = ['c', 'c', 'c', 'c', 'c'];
  List<String> closeCitiesNames = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];
  List<double> closeCitiesDistances = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
  int index = 0;

  void setState(String defaultState) {
    this.defaultState = defaultState;
    notifyListeners();
  }

  void setTemp(int defaultTemp) {
    this.defaultTemp = defaultTemp;
    notifyListeners();
  }

  void setWoeid(int woeid) {
    this.woeid = woeid;
    notifyListeners();
  }

  void setIndex(int index) {
    this.index = index;
    notifyListeners();
  }

  void setWeatherAbbr(String default_weather_abbr) {
    this.default_weather_abbr = default_weather_abbr;
    notifyListeners();
  }

  void setLatt(double lattitude) {
    this.lattitude = lattitude;
    notifyListeners();
  }

  void setLong(double longtitude) {
    this.longtitude = longtitude;
    notifyListeners();
  }
}
