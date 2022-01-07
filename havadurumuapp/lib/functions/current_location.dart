import 'dart:convert';
import 'package:connectivity/connectivity.dart';
import 'package:havadurumuapp/variable_class/defaultVariables.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';

import 'alertdialogevent.dart';

Future<void> determinePosition({
  required context,
  required DefaultVariables defaultVariables,
}) async {
  bool serviceEnabled;
  LocationPermission permission;
  int cityRange = 4;
  bool _internetAccess = false;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    await showAlertDialog(context,
        title_text: 'Location Services are disabled',
        body_text: 'Please enable your location services');
    Geolocator.openLocationSettings();
  }
  permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      showAlertDialog(context,
          title_text: 'Location Access Problem',
          body_text: 'You need to enable location services');
    }
  }
  if (permission == LocationPermission.deniedForever) {
    showAlertDialog(context,
        title_text: 'Location Access Problem',
        body_text: 'You need to enable location services');
  }
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile ||
      connectivityResult == ConnectivityResult.wifi) {
    _internetAccess = true;
  } else if (connectivityResult == ConnectivityResult.none) {
    await showAlertDialog(context,
        title_text: 'Internet Access Problem',
        body_text:
            'You are not connected to the internet. Please connect to internet to get data.');
  }

  try {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    Provider.of<DefaultVariables>(context, listen: false)
        .setLatt(position.latitude.toDouble());
    Provider.of<DefaultVariables>(context, listen: false)
        .setLong(position.longitude.toDouble());
    var url = Uri.parse(
      'https://www.metaweather.com/api/location/search/?lattlong=' +
          Provider.of<DefaultVariables>(context, listen: false)
              .lattitude
              .toString() +
          ', ' +
          Provider.of<DefaultVariables>(context, listen: false)
              .longtitude
              .toString(),
    );
    var response = await http.get(url);
    Provider.of<DefaultVariables>(context, listen: false)
        .closeCitiesNames
        .clear();
    Provider.of<DefaultVariables>(context, listen: false)
        .closeCitiesDistances
        .clear();
    for (var i = 0; i <= cityRange; i++) {
      Provider.of<DefaultVariables>(context, listen: false)
          .closeCitiesNames
          .add(jsonDecode(response.body)[i]['title']);
      Provider.of<DefaultVariables>(context, listen: false)
          .closeCitiesDistances
          .add(jsonDecode(response.body)[i]['distance'] / 1000);
    }
  } on Exception catch (e) {
    print(e);
  }
}
