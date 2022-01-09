// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  bool autocorrect = true;
  bool enablesuggestions = true;
  bool obscureText = false;
  String hintText;
  double verticalmargin;
  double horizontalmargin;
  IconData iconImage;
  String labelText;
  TextEditingController textEditingController;

  InputField(
      {required this.autocorrect,
      required this.enablesuggestions,
      required this.obscureText,
      required this.hintText,
      required this.verticalmargin,
      required this.horizontalmargin,
      required this.iconImage,
      required this.labelText,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: verticalmargin),
            child: Text(
              labelText,
              textAlign: TextAlign.start,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconImage,
                color: Colors.black,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: verticalmargin,
                          horizontal: horizontalmargin),
                      child: TextField(
                        controller: textEditingController,
                        style: const TextStyle(color: Colors.black),
                        cursorColor: Colors.black,
                        obscureText: obscureText,
                        enableSuggestions: enablesuggestions,
                        autocorrect: autocorrect,
                        decoration: InputDecoration(
                            hintText: hintText,
                            hintStyle: const TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
