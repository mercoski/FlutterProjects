// ignore_for_file: use_key_in_widget_constructors, empty_constructor_bodies

import 'dart:io';

import 'package:average_life_expectency/color_constants.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color? renk;
  final Widget? child;
  final Function()? OnPress;
  const MyContainer(
      {this.renk = kDefaultContainerColor, this.child, this.OnPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnPress,
      child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: child,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
          color: renk,
        ),
      ),
    );
  }
}

class GenderColumn extends StatelessWidget {
  final Icon icon;
  final Text text;

  GenderColumn({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: icon,
        ),
        Expanded(
          child: text,
        )
      ],
    );
  }
}
