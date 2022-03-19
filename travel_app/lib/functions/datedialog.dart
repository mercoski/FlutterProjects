import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';

Future<void> showDateDialog(
  BuildContext context,
) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return Container(
        child: FractionallySizedBox(
          widthFactor: 0.7,
          heightFactor: 0.48,
          child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(20),
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 46),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    border: Border.all(color: Color(0xff707070), width: 0.3),
                    color: Color(0xffFCFAF5),
                  ),
                  child: Center(
                      child: Text(
                    'Sélectionner une date',
                    style: TextStyle(
                      fontFamily: 'Recoleta',
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 16),
                      fontWeight: FontWeight.w600,
                      color: Color(0xff413C3C),
                    ),
                  )),
                ),
                SfDateRangePicker(
                    onCancel: () {
                      Navigator.pop(context);
                    },
                    onSubmit: (p0) {
                      Navigator.pop(context);
                    },
                    cancelText: 'Annuler',
                    showActionButtons: true,
                    rangeSelectionColor: Color(0xff006696),
                    endRangeSelectionColor: Color(0xff006696),
                    startRangeSelectionColor: Color(0xff006696),
                    headerStyle: DateRangePickerHeaderStyle(
                      textAlign: TextAlign.center,
                      textStyle: TextStyle(
                        fontFamily: 'Recoleta',
                        fontSize:
                            AdaptiveTextSize().getadaptiveTextSize(context, 14),
                        fontWeight: FontWeight.w600,
                        color: Color(0xff006696),
                      ),
                    ),
                    selectionMode: DateRangePickerSelectionMode.range,
                    view: DateRangePickerView.month,
                    monthViewSettings: DateRangePickerMonthViewSettings(
                      firstDayOfWeek: 1,
                    )),
              ],
            ),
          ),
        ),
      );
    },
  );
}
