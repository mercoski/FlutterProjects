import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiRequest {
  String api_key = '';
  String search_term = 'batman';
  int numberOfGifs = 1;
  List<String> gifList = [];

  ApiRequest(this.api_key, this.search_term, this.numberOfGifs);

  getData() async {
    var response = await http.get(Uri.parse(
        'https://g.tenor.com/v1/search?q=$search_term&key=$api_key&limit=$numberOfGifs'));

    gifList.clear();

    for (var i = 0; i < numberOfGifs; i++) {
      gifList.add(jsonDecode(response.body)['results'][i]['url'].toString());
    }

    return gifList;
  }
}
