import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/functions/alertdialog.dart';
import 'package:travel_app/functions/datedialog.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class PreparerVoyagePage extends StatelessWidget {
  UserClass? user;
  PreparerVoyagePage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xffF16633),
            size: 14,
          ),
        ),
        centerTitle: true,
        titleSpacing:
            const AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 20),
        title: Text(
          'Préparer un nouveau voyage',
          style: TextStyle(
              fontFamily: 'Recoleta',
              fontSize:
                  const AdaptiveTextSize().getadaptiveTextSize(context, 16),
              fontWeight: FontWeight.w600,
              color: const Color(0xff413C3C)),
          textAlign: TextAlign.left,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffFCFAF5),
      ),
      body: Center(
        child: Container(
          width: AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 335),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 20),
              ),
              Text(
                'NOM DU VOYAGE',
                style: GoogleFonts.poppins(
                    fontSize:
                        AdaptiveTextSize().getadaptiveTextSize(context, 12),
                    fontWeight: FontWeight.w400,
                    color: Color(0xffB7B7B7)),
                textAlign: TextAlign.left,
              ),
              Container(
                height: AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 5),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 36),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Color(0xff707070), width: 0.3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 15),
                      ),
                      Text(
                        '...',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(context, 14),
                          fontWeight: FontWeight.w600,
                          color: Color(0xff413C3C),
                        ),
                      ),
                      Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 20),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 10),
              ),
              Text(
                'DATE DE DÉBUT',
                style: GoogleFonts.poppins(
                    fontSize:
                        AdaptiveTextSize().getadaptiveTextSize(context, 12),
                    fontWeight: FontWeight.w400,
                    color: Color(0xffB7B7B7)),
                textAlign: TextAlign.left,
              ),
              GestureDetector(
                onTap: () {
                  showDateDialog(context);
                },
                child: Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 36),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Color(0xff707070), width: 0.3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 15),
                      ),
                      Text(
                        '...',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(context, 14),
                          fontWeight: FontWeight.w600,
                          color: Color(0xff413C3C),
                        ),
                      ),
                      Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 20),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 10),
              ),
              Text(
                'DATE DE FIN',
                style: GoogleFonts.poppins(
                    fontSize:
                        AdaptiveTextSize().getadaptiveTextSize(context, 12),
                    fontWeight: FontWeight.w400,
                    color: Color(0xffB7B7B7)),
                textAlign: TextAlign.left,
              ),
              GestureDetector(
                onTap: () {
                  showDateDialog(context);
                },
                child: Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 36),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Color(0xff707070), width: 0.3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 15),
                      ),
                      Text(
                        '...',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(context, 14),
                          fontWeight: FontWeight.w600,
                          color: Color(0xff413C3C),
                        ),
                      ),
                      Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 20),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 160),
                      height: AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 34),
                      decoration: BoxDecoration(
                        color: Color(0xffFCFAF5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border:
                            Border.all(color: Color(0xff707070), width: 0.1),
                      ),
                      child: Center(
                        child: Text(
                          'Annuler',
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontSize: AdaptiveTextSize()
                                .getadaptiveTextSize(context, 13),
                            fontWeight: FontWeight.w600,
                            color: Color(0xffF16633),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 160),
                      height: AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 34),
                      decoration: BoxDecoration(
                        color: Color(0xffFCFAF5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border:
                            Border.all(color: Color(0xff707070), width: 0.1),
                      ),
                      child: Center(
                        child: Text(
                          'Créer',
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontSize: AdaptiveTextSize()
                                .getadaptiveTextSize(context, 13),
                            fontWeight: FontWeight.w600,
                            color: Color(0xff296592),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
