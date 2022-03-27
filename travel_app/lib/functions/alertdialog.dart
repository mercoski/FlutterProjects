import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';

Future<void> showAlertDialog(BuildContext context,
    {required String title_text,
    required String body_text_1,
    required String body_text_2}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return Container(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          heightFactor: 0.232,
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 54),
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 300),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    border: Border.all(color: Color(0xff707070), width: 0.3),
                    color: Color(0xffFCFAF5),
                  ),
                  child: Center(
                      child: Text(
                    title_text,
                    style: TextStyle(
                      fontFamily: 'Recoleta',
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 16),
                      fontWeight: FontWeight.w600,
                      color: Color(0xff413C3C),
                    ),
                  )),
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 11),
                ),
                Center(
                  child: Text(
                    body_text_1,
                    style: GoogleFonts.poppins(
                        fontSize:
                            AdaptiveTextSize().getadaptiveTextSize(context, 14),
                        color: Color(0xff413C3C)),
                  ),
                ),
                Center(
                  child: Text(
                    body_text_2,
                    style: GoogleFonts.poppins(
                        fontSize:
                            AdaptiveTextSize().getadaptiveTextSize(context, 14),
                        color: Color(0xff413C3C)),
                  ),
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 5),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 54),
                    width: AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 300),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      border: Border.all(color: Color(0xff707070), width: 0.3),
                      color: Color(0xffFCFAF5),
                    ),
                    child: Center(
                        child: Text(
                      'OK',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(context, 12),
                          color: Color(0xff006696)),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
