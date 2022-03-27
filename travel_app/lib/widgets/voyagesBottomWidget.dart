import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/models/data.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:travel_app/widgets/voyagesbottomcomingscreen.dart';

class voyagesBottomWidget extends StatelessWidget {
  const voyagesBottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 430),
      width: AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 335),
      child: selectedVoyageButton == 'tous'
          ? ListView(
              children: [
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 10),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      backgroundColor: Colors.white,
                      isScrollControlled: true,
                      isDismissible: false,
                      context: context,
                      builder: (builder) {
                        return VoyagesBottomComingScreen();
                      },
                    );
                  },
                  child: Container(
                    height: AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 80),
                    decoration: BoxDecoration(
                      color: Color(0xffFCFAF5),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border:
                          Border.all(color: const Color(0xffE16E42), width: 1),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 20),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 7),
                            ),
                            Text(
                              'Vacances de Pâques',
                              style: TextStyle(
                                  fontFamily: 'Recoleta',
                                  fontSize: const AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 14),
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 5),
                            ),
                            Text(
                              'Début : 27/04/022',
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 12),
                                color: Color(0xff413C3C),
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 5),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.location_pin,
                                  size: 16,
                                ),
                                Text(
                                  '18 spots',
                                  style: GoogleFonts.poppins(
                                    fontSize: AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 12),
                                    color: Color(0xff413C3C),
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 33),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 31),
                            ),
                            Text(
                              'Fin : 18/05/2022',
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 12),
                                color: Color(0xff413C3C),
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 5),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.map_outlined,
                                  size: 16,
                                ),
                                Text(
                                  '462 km',
                                  style: GoogleFonts.poppins(
                                    fontSize: AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 12),
                                    color: Color(0xff413C3C),
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 20),
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 80),
                  decoration: BoxDecoration(
                    color: Color(0xffFCFAF5),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border:
                        Border.all(color: const Color(0xff296592), width: 1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 20),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 7),
                          ),
                          Text(
                            'Vacances de Pâques',
                            style: TextStyle(
                                fontFamily: 'Recoleta',
                                fontSize: const AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                            textAlign: TextAlign.left,
                          ),
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 5),
                          ),
                          Text(
                            'Début : 27/04/022',
                            style: GoogleFonts.poppins(
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 12),
                              color: Color(0xff413C3C),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.location_pin,
                                size: 16,
                              ),
                              Text(
                                '18 spots',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 33),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 31),
                          ),
                          Text(
                            'Fin : 18/05/2022',
                            style: GoogleFonts.poppins(
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 12),
                              color: Color(0xff413C3C),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.map_outlined,
                                size: 16,
                              ),
                              Text(
                                '462 km',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 20),
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 80),
                  decoration: BoxDecoration(
                    color: Color(0xffFCFAF5),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border:
                        Border.all(color: const Color(0xff296592), width: 1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 20),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 7),
                          ),
                          Text(
                            'Vacances de Pâques',
                            style: TextStyle(
                                fontFamily: 'Recoleta',
                                fontSize: const AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                            textAlign: TextAlign.left,
                          ),
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 5),
                          ),
                          Text(
                            'Début : 27/04/022',
                            style: GoogleFonts.poppins(
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 12),
                              color: Color(0xff413C3C),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.location_pin,
                                size: 16,
                              ),
                              Text(
                                '18 spots',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 33),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 31),
                          ),
                          Text(
                            'Fin : 18/05/2022',
                            style: GoogleFonts.poppins(
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 12),
                              color: Color(0xff413C3C),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.map_outlined,
                                size: 16,
                              ),
                              Text(
                                '462 km',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 20),
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 80),
                  decoration: BoxDecoration(
                    color: Color(0xffFCFAF5),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border:
                        Border.all(color: const Color(0xff296592), width: 1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 20),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 7),
                          ),
                          Text(
                            'Vacances de Pâques',
                            style: TextStyle(
                                fontFamily: 'Recoleta',
                                fontSize: const AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                            textAlign: TextAlign.left,
                          ),
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 5),
                          ),
                          Text(
                            'Début : 27/04/022',
                            style: GoogleFonts.poppins(
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 12),
                              color: Color(0xff413C3C),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.location_pin,
                                size: 16,
                              ),
                              Text(
                                '18 spots',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 33),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 31),
                          ),
                          Text(
                            'Fin : 18/05/2022',
                            style: GoogleFonts.poppins(
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 12),
                              color: Color(0xff413C3C),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.map_outlined,
                                size: 16,
                              ),
                              Text(
                                '462 km',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 20),
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 80),
                  decoration: BoxDecoration(
                    color: Color(0xffFCFAF5),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border:
                        Border.all(color: const Color(0xff61924C), width: 1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 20),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 7),
                          ),
                          Text(
                            'Vacances de Pâques',
                            style: TextStyle(
                                fontFamily: 'Recoleta',
                                fontSize: const AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                            textAlign: TextAlign.left,
                          ),
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 5),
                          ),
                          Text(
                            'Début : 27/04/022',
                            style: GoogleFonts.poppins(
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 12),
                              color: Color(0xff413C3C),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.location_pin,
                                size: 16,
                              ),
                              Text(
                                '18 spots',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 33),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 31),
                          ),
                          Text(
                            'Fin : 18/05/2022',
                            style: GoogleFonts.poppins(
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 12),
                              color: Color(0xff413C3C),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.map_outlined,
                                size: 16,
                              ),
                              Text(
                                '462 km',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          : selectedVoyageButton == 'avenir'
              ? ListView(
                  children: [
                    Container(
                      height: AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 10),
                    ),
                    Container(
                      height: AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 80),
                      decoration: BoxDecoration(
                        color: Color(0xffFCFAF5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            color: const Color(0xff296592), width: 1),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: AdaptiveScreenSize()
                                .getadaptiveScreenSizeWidth(context, 20),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 7),
                              ),
                              Text(
                                'Vacances de Pâques',
                                style: TextStyle(
                                    fontFamily: 'Recoleta',
                                    fontSize: const AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 14),
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                                textAlign: TextAlign.left,
                              ),
                              Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 5),
                              ),
                              Text(
                                'Début : 27/04/022',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 5),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.location_pin,
                                    size: 16,
                                  ),
                                  Text(
                                    '18 spots',
                                    style: GoogleFonts.poppins(
                                      fontSize: AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 12),
                                      color: Color(0xff413C3C),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: AdaptiveScreenSize()
                                .getadaptiveScreenSizeWidth(context, 33),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 31),
                              ),
                              Text(
                                'Fin : 18/05/2022',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 5),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.map_outlined,
                                    size: 16,
                                  ),
                                  Text(
                                    '462 km',
                                    style: GoogleFonts.poppins(
                                      fontSize: AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 12),
                                      color: Color(0xff413C3C),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),
                    Container(
                      height: AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 80),
                      decoration: BoxDecoration(
                        color: Color(0xffFCFAF5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            color: const Color(0xff296592), width: 1),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: AdaptiveScreenSize()
                                .getadaptiveScreenSizeWidth(context, 20),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 7),
                              ),
                              Text(
                                'Vacances de Pâques',
                                style: TextStyle(
                                    fontFamily: 'Recoleta',
                                    fontSize: const AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 14),
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                                textAlign: TextAlign.left,
                              ),
                              Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 5),
                              ),
                              Text(
                                'Début : 27/04/022',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 5),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.location_pin,
                                    size: 16,
                                  ),
                                  Text(
                                    '18 spots',
                                    style: GoogleFonts.poppins(
                                      fontSize: AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 12),
                                      color: Color(0xff413C3C),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: AdaptiveScreenSize()
                                .getadaptiveScreenSizeWidth(context, 33),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 31),
                              ),
                              Text(
                                'Fin : 18/05/2022',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 5),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.map_outlined,
                                    size: 16,
                                  ),
                                  Text(
                                    '462 km',
                                    style: GoogleFonts.poppins(
                                      fontSize: AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 12),
                                      color: Color(0xff413C3C),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),
                    Container(
                      height: AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 80),
                      decoration: BoxDecoration(
                        color: Color(0xffFCFAF5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            color: const Color(0xff296592), width: 1),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: AdaptiveScreenSize()
                                .getadaptiveScreenSizeWidth(context, 20),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 7),
                              ),
                              Text(
                                'Vacances de Pâques',
                                style: TextStyle(
                                    fontFamily: 'Recoleta',
                                    fontSize: const AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 14),
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                                textAlign: TextAlign.left,
                              ),
                              Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 5),
                              ),
                              Text(
                                'Début : 27/04/022',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 5),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.location_pin,
                                    size: 16,
                                  ),
                                  Text(
                                    '18 spots',
                                    style: GoogleFonts.poppins(
                                      fontSize: AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 12),
                                      color: Color(0xff413C3C),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: AdaptiveScreenSize()
                                .getadaptiveScreenSizeWidth(context, 33),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 31),
                              ),
                              Text(
                                'Fin : 18/05/2022',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 5),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.map_outlined,
                                    size: 16,
                                  ),
                                  Text(
                                    '462 km',
                                    style: GoogleFonts.poppins(
                                      fontSize: AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 12),
                                      color: Color(0xff413C3C),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : selectedVoyageButton == 'encours'
                  ? ListView(
                      children: [
                        Container(
                          height: AdaptiveScreenSize()
                              .getadaptiveScreenSizeHeight(context, 10),
                        ),
                        Container(
                          height: AdaptiveScreenSize()
                              .getadaptiveScreenSizeHeight(context, 80),
                          decoration: BoxDecoration(
                            color: Color(0xffFCFAF5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                                color: const Color(0xffE16E42), width: 1),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 20),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeHeight(
                                            context, 7),
                                  ),
                                  Text(
                                    'Vacances de Pâques',
                                    style: TextStyle(
                                        fontFamily: 'Recoleta',
                                        fontSize: const AdaptiveTextSize()
                                            .getadaptiveTextSize(context, 14),
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                    textAlign: TextAlign.left,
                                  ),
                                  Container(
                                    height: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeHeight(
                                            context, 5),
                                  ),
                                  Text(
                                    'Début : 27/04/022',
                                    style: GoogleFonts.poppins(
                                      fontSize: AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 12),
                                      color: Color(0xff413C3C),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  Container(
                                    height: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeHeight(
                                            context, 5),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.location_pin,
                                        size: 16,
                                      ),
                                      Text(
                                        '18 spots',
                                        style: GoogleFonts.poppins(
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 12),
                                          color: Color(0xff413C3C),
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 33),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeHeight(
                                            context, 31),
                                  ),
                                  Text(
                                    'Fin : 18/05/2022',
                                    style: GoogleFonts.poppins(
                                      fontSize: AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 12),
                                      color: Color(0xff413C3C),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  Container(
                                    height: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeHeight(
                                            context, 5),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.map_outlined,
                                        size: 16,
                                      ),
                                      Text(
                                        '462 km',
                                        style: GoogleFonts.poppins(
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 12),
                                          color: Color(0xff413C3C),
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : selectedVoyageButton == 'termine'
                      ? ListView(
                          children: [
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 10),
                            ),
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 80),
                              decoration: BoxDecoration(
                                color: Color(0xffFCFAF5),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                border: Border.all(
                                    color: const Color(0xff61924C), width: 1),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeWidth(
                                            context, 20),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: AdaptiveScreenSize()
                                            .getadaptiveScreenSizeHeight(
                                                context, 7),
                                      ),
                                      Text(
                                        'Vacances de Pâques',
                                        style: TextStyle(
                                            fontFamily: 'Recoleta',
                                            fontSize: const AdaptiveTextSize()
                                                .getadaptiveTextSize(
                                                    context, 14),
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                        textAlign: TextAlign.left,
                                      ),
                                      Container(
                                        height: AdaptiveScreenSize()
                                            .getadaptiveScreenSizeHeight(
                                                context, 5),
                                      ),
                                      Text(
                                        'Début : 27/04/022',
                                        style: GoogleFonts.poppins(
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 12),
                                          color: Color(0xff413C3C),
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      Container(
                                        height: AdaptiveScreenSize()
                                            .getadaptiveScreenSizeHeight(
                                                context, 5),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.location_pin,
                                            size: 16,
                                          ),
                                          Text(
                                            '18 spots',
                                            style: GoogleFonts.poppins(
                                              fontSize: AdaptiveTextSize()
                                                  .getadaptiveTextSize(
                                                      context, 12),
                                              color: Color(0xff413C3C),
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeWidth(
                                            context, 33),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: AdaptiveScreenSize()
                                            .getadaptiveScreenSizeHeight(
                                                context, 31),
                                      ),
                                      Text(
                                        'Fin : 18/05/2022',
                                        style: GoogleFonts.poppins(
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 12),
                                          color: Color(0xff413C3C),
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      Container(
                                        height: AdaptiveScreenSize()
                                            .getadaptiveScreenSizeHeight(
                                                context, 5),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.map_outlined,
                                            size: 16,
                                          ),
                                          Text(
                                            '462 km',
                                            style: GoogleFonts.poppins(
                                              fontSize: AdaptiveTextSize()
                                                  .getadaptiveTextSize(
                                                      context, 12),
                                              color: Color(0xff413C3C),
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Container(),
    );
  }
}
