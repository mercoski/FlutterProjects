import 'dart:io';

import 'package:flutter/material.dart';

Future<void> showAlertDialog(BuildContext context,
    {required String title_text, required String body_text}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.orange[200],
        title: Text(title_text),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(body_text),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Okay'),
            onPressed: () {
              if (title_text == 'Internet Access Problem') {
                exit(0);
              } else {
                Navigator.of(context).pop();
              }
            },
          ),
        ],
      );
    },
  );
}
