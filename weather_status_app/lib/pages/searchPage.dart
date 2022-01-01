// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_status_app/apis/tempdata.dart';
import 'package:weather_status_app/pages/homePage.dart';
import 'package:http/http.dart' as http;

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController textController = TextEditingController();

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.orange[200],
          title: const Text('Selected city is invalid'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text(
                    'The city which you selected is invalid or we dont have its data, please type its name properly'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Okay'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/search.jpg'),
        ),
      ),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            var url = Uri.parse(
                'https://www.metaweather.com/api/location/search/?query=' +
                    textController.text);
            var response = await http.get(url);
            jsonDecode(response.body).isEmpty
                ? _showMyDialog()
                : Navigator.pop(context, textController.text);
          },
          backgroundColor: Colors.red,
          child: Text('OK'),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: TextField(
                  controller: textController,
                  decoration: InputDecoration(
                    hintText: 'Select City',
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
