// ignore_for_file: prefer_const_constructors

import 'package:average_life_expectency/color_constants.dart';
import 'package:average_life_expectency/variables.dart';
import 'package:flutter/material.dart';

import 'created_widgets.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: Text('Life Expectancy'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    child: MyContainer(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                'Height',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          Expanded(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                '$defaultHeight cm',
                                style:
                                    TextStyle(fontSize: 30, color: Colors.blue),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        defaultHeight++;
                                      });
                                    },
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        defaultHeight--;
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                'Weight',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          Expanded(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                '$defaultWeight kg',
                                style:
                                    TextStyle(fontSize: 30, color: Colors.blue),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        defaultWeight++;
                                      });
                                    },
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        defaultWeight--;
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'How often do you sport ?',
                    ),
                    Text(
                      daysOfSport.toInt().toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                    Slider(
                      min: 0,
                      max: 7,
                      divisions: 7,
                      value: daysOfSport,
                      onChanged: (double newValue) {
                        setState(() {
                          daysOfSport = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: MyContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'How much do you smoke in a day ?',
                    ),
                    Text(
                      numberOfSmoke.toInt().toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                    Slider(
                      min: 0,
                      max: 60,
                      divisions: 60,
                      value: numberOfSmoke,
                      onChanged: (double newValue) {
                        setState(() {
                          numberOfSmoke = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      OnPress: () {
                        setState(() {
                          seciliCinsiyet = 'MALE';
                        });
                      },
                      renk: seciliCinsiyet == 'MALE'
                          ? kSelectedButton
                          : Colors.white,
                      child: Center(
                        child: GenderColumn(
                          icon: Icon(
                            Icons.male,
                            size: 70,
                          ),
                          text: Text('MALE'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      OnPress: () {
                        setState(() {
                          seciliCinsiyet = 'FEMALE';
                        });
                      },
                      renk: seciliCinsiyet == 'FEMALE'
                          ? kSelectedButton
                          : Colors.white,
                      child: Center(
                        child: GenderColumn(
                          icon: Icon(
                            Icons.female,
                            size: 70,
                          ),
                          text: Text('FEMALE'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
