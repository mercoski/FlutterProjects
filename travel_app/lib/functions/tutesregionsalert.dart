import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/models/data.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';

Future<void> tutesRegionsAlert(BuildContext context,
    {required List<String> data,
    required height_of_texts,
    required all_space}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return Center(
        child: Container(
          height: AdaptiveScreenSize().getadaptiveScreenSizeHeight(
            context,
            all_space,
          ),
          width: AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 335),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: const Color(0xff7D7D7D)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, height_of_texts),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    border: Border.all(color: const Color(0xff7D7D7D)),
                  ),
                  child: Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 300),
                              child: Text(
                                data[index],
                                style: GoogleFonts.poppins(
                                  fontSize: const AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: const Color(0xff707070),
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider();
                        },
                        itemCount: data.length),
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 47),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Color(0xff413C3C),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    border: Border.all(color: const Color(0xff7D7D7D)),
                  ),
                  child: Center(
                      child: Text(
                    'Filtrer',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: const AdaptiveTextSize()
                          .getadaptiveTextSize(context, 12),
                      color: const Color(0xffB7B7B7),
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
