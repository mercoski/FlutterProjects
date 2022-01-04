import 'dart:convert';

import 'package:connectivity/connectivity.dart';
import 'package:weather_status_app/apis/tempdata.dart';
import 'package:http/http.dart' as http;

import 'alertdialogevent.dart';

Future<List<List<Object>>> getNearLocationData(
    {required String selectedCity, required context}) async {
  int cityRange = 5;
  bool _internetAccess = false;
  String citysLatLong;
  List<String> closeCitiesNames = [];
  List<int> closeCitiesDistances = [];

  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile ||
      connectivityResult == ConnectivityResult.wifi) {
    _internetAccess = true;
  } else {
    await showAlertDialog(context,
        title_text: 'Internet Access Problem',
        body_text:
            'You are not connected to the internet. Please connect to internet to get data.');
  }

  var url = Uri.parse(
    'https://www.metaweather.com/api/location/search/?query=' + selectedCity,
  );

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  citysLatLong = jsonDecode(response.body)[0]['latt_long'];
  url = Uri.parse(
    'https://www.metaweather.com/api/location/search/?lattlong=' + citysLatLong,
  );
  response = await http.get(url);

  closeCitiesNames.clear();
  for (var i = 0; i < cityRange; i++) {
    closeCitiesNames.add(jsonDecode(response.body)[i]['title']);
    closeCitiesDistances.add(jsonDecode(response.body)[i]['distance']);
  }
  return [closeCitiesNames, closeCitiesDistances];
}
