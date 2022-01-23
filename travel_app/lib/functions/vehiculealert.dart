import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:travel_app/widgets/radiobox.dart';

Future<void> VehiculeAlert(
  BuildContext context, {
  required String title_text,
  required String body_text,
  required UserClass? user,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      int? value_def;
      return Container(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          heightFactor: 0.23,
          child: Card(
            color: Color(0xFFFCFAF5),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RadioBoxTile(
                  value_def: value_def,
                  text: 'VAN',
                ),
                RadioBoxTile(
                  value_def: value_def,
                  text: 'FOURGON',
                ),
                RadioBoxTile(
                  value_def: value_def,
                  text: 'CAMPING-CAR',
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Retour',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 14),
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffF16633)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Enregistrer',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 14),
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff006696)),
                            ),
                          ),
                        ),
                      )
                    ],
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
