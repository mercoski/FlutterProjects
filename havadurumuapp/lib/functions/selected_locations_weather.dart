import 'dart:convert';
import 'package:connectivity/connectivity.dart';
import 'package:havadurumuapp/variable_class/defaultVariables.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

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
        Provider.of<DefaultVariables>(context, listen: false).defaultState,
  );

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  Provider.of<DefaultVariables>(context, listen: false)
      .setWoeid(jsonDecode(response.body)[0]['woeid']);
  url = Uri.parse(
    'https://www.metaweather.com/api/location/' +
        Provider.of<DefaultVariables>(context, listen: false).woeid.toString(),
  );
  response = await http.get(url);
  Provider.of<DefaultVariables>(context, listen: false).setTemp(
      jsonDecode(response.body)['consolidated_weather'][0]['the_temp'].toInt());
  Provider.of<DefaultVariables>(context, listen: false).setWeatherAbbr(
      jsonDecode(response.body)['consolidated_weather'][0]
          ['weather_state_abbr']);

  Provider.of<DefaultVariables>(context, listen: false).dates.clear();
  Provider.of<DefaultVariables>(context, listen: false).temps.clear();
  Provider.of<DefaultVariables>(context, listen: false)
      .weather_abbs_forcast
      .clear();

  for (var i = 0; i <= dateRange; i++) {
    Provider.of<DefaultVariables>(context, listen: false).dates.add(
        jsonDecode(response.body)['consolidated_weather'][i]
            ['applicable_date']);
    Provider.of<DefaultVariables>(context, listen: false)
        .temps
        .add(jsonDecode(response.body)['consolidated_weather'][i]['the_temp']);
    Provider.of<DefaultVariables>(context, listen: false)
        .weather_abbs_forcast
        .add(jsonDecode(response.body)['consolidated_weather'][i]
            ['weather_state_abbr']);
  }
}
