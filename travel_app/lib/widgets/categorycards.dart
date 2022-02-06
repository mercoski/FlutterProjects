import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';

class CategoryCards extends StatelessWidget {
  CategoryCards({Key? key, required this.categoryimage}) : super(key: key);
  String? categoryimage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 180),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/$categoryimage'),
                fit: BoxFit.fitHeight),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
    );
  }
}
