import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utils/adaptivetext.dart';

class HomePageButtons extends StatelessWidget {
  String buttontext;
  bool isselected;
  HomePageButtons({required this.buttontext, required this.isselected});

  @override
  Widget build(BuildContext context) {
    return Text(
      buttontext,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: 'Recoleta',
        fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 16),
        fontWeight: FontWeight.w600,
        color: isselected ? Color(0xFF006696) : Color(0xFFB7B7B7),
      ),
    );
  }
}
