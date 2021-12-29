import 'package:average_life_expectency/color_constants.dart';
import 'package:average_life_expectency/user_variables.dart';
import 'package:flutter/material.dart';
import 'package:average_life_expectency/calculation.dart';

class CalculatePage extends StatelessWidget {
  final UserVariables _userVariables;
  CalculatePage(this._userVariables);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Life Expectancy'),
        backgroundColor: kAppBarColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 8,
                    child: Center(
                      child: Text(
                        LifeExpCalc(_userVariables)
                                .calculation()
                                .toInt()
                                .toString() +
                            ' years',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('BACK'),
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
