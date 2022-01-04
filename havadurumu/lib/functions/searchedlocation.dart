import 'dart:convert';

import 'package:connectivity/connectivity.dart';
import 'package:weather_status_app/apis/tempdata.dart';
import 'package:http/http.dart' as http;

import 'alertdialogevent.dart';

Future<void> getLocationData(
    {required DefaultVariables defaultVariables, required context}) async {
  int dateRange = 5;
  bool _internetAccess = false;

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
    'https://www.metaweather.com/api/location/search/?query=' +
        defaultVariables.defaultState,
  );

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  defaultVariables.woeid = jsonDecode(response.body)[0]['woeid'];
  url = Uri.parse(
    'https://www.metaweather.com/api/location/' +
        defaultVariables.woeid.toString(),
  );
  response = await http.get(url);
  defaultVariables.defaultTemp =
      jsonDecode(response.body)['consolidated_weather'][0]['the_temp'].toInt();
  defaultVariables.default_weather_abbr =
      jsonDecode(response.body)['consolidated_weather'][0]
          ['weather_state_abbr'];

  defaultVariables.dates.clear();
  defaultVariables.temps.clear();
  defaultVariables.weather_abbs_forcast.clear();

  for (var i = 1; i <= dateRange; i++) {
    defaultVariables.dates.add(jsonDecode(response.body)['consolidated_weather']
        [i]['applicable_date']);
    defaultVariables.temps
        .add(jsonDecode(response.body)['consolidated_weather'][i]['the_temp']);
    defaultVariables.weather_abbs_forcast.add(
        jsonDecode(response.body)['consolidated_weather'][i]
            ['weather_state_abbr']);
  }
}
