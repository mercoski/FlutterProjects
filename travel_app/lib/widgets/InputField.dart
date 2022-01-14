// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  bool autocorrect = true;
  bool enablesuggestions = true;
  bool obscureText = false;
  String hintText;
  TextEditingController textEditingController;

  InputField(
      {required this.autocorrect,
      required this.enablesuggestions,
      required this.obscureText,
      required this.hintText,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(style: BorderStyle.none),
            borderRadius: BorderRadius.all(Radius.circular(50))),
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
    );
  }
}
