import 'dart:convert';
import 'package:connectivity/connectivity.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import 'package:weather_status_app/apis/tempdata.dart';
import 'package:weather_status_app/functions/alertdialogevent.dart';

Future<void> determinePosition({
  required context,
  required DefaultVariables defaultVariables,
}) async {
  bool serviceEnabled;
  LocationPermission permission;
  int dateRange = 5;
  bool _internetAccess = false;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error('Location services are disabled.');
  }
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    return Future.error('Location permissions are denied');
  }
  if (permission == LocationPermission.deniedForever) {
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }
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

  try {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    defaultVariables.lattitude = position.latitude.toDouble();
    defaultVariables.longtitude = position.longitude.toDouble();
    var url = Uri.parse(
      'https://www.metaweather.com/api/location/search/?lattlong=' +
          defaultVariables.lattitude.toString() +
          ', ' +
          defaultVariables.longtitude.toString(),
    );
    var response = await http.get(url);
    defaultVariables.woeid = jsonDecode(response.body)[1]['woeid'];
    defaultVariables.defaultState = jsonDecode(response.body)[1]['title']
        .toString()
        .toLowerCase()
        .toUpperCase();

    url = Uri.parse(
      'https://www.metaweather.com/api/location/' +
          defaultVariables.woeid.toString(),
    );
    response = await http.get(url);
    defaultVariables.defaultTemp =
        jsonDecode(response.body)['consolidated_weather'][0]['the_temp']
            .toInt();
    defaultVariables.default_weather_abbr =
        jsonDecode(response.body)['consolidated_weather'][0]
            ['weather_state_abbr'];

    defaultVariables.dates.clear();

    for (var i = 1; i <= dateRange; i++) {
      defaultVariables.dates.add(
          jsonDecode(response.body)['consolidated_weather'][i]
              ['applicable_date']);
      defaultVariables.temps.add(
          jsonDecode(response.body)['consolidated_weather'][i]['the_temp']);
      defaultVariables.weather_abbs_forcast.add(
          jsonDecode(response.body)['consolidated_weather'][i]
              ['weather_state_abbr']);
    }
  } on Exception catch (e) {
    print(e);
  }
}
