import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/models/data.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';

class MapBottomComingScreen extends StatefulWidget {
  const MapBottomComingScreen({Key? key}) : super(key: key);

  @override
  _MapBottomComingScreenState createState() => _MapBottomComingScreenState();
}

class _MapBottomComingScreenState extends State<MapBottomComingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 610),
      width: AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 375),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        backgroundBlendMode: BlendMode.color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 60),
            child: Row(
              children: [
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 20),
                ),
                const Icon(
                  Icons.arrow_back_ios,
                  size: 14,
                  color: Color(0xffF16633),
                ),
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 5),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Retour',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        fontSize:
                            AdaptiveTextSize().getadaptiveTextSize(context, 14),
                        fontWeight: FontWeight.w400,
                        color: Color(0xffF16633)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 134),
            width:
                AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 335),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Color(0xffFCFAF5),
            ),
            child: Column(
              children: [
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 37),
                  child: Row(
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 10),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'Spots',
                            style: TextStyle(
                              fontFamily: 'Recoleta',
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 16),
                              fontWeight: FontWeight.w600,
                              color: Color(0xff7D7D7D),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          nature_button_clicked = !nature_button_clicked;
                        });
                      },
                      child: Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 153),
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 36),
                        decoration: BoxDecoration(
                          color:
                              nature_button_clicked ? Color(0xff674B3F) : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: nature_button_clicked
                                  ? Colors.white
                                  : Color(0xff7D7D7D).withOpacity(0.5)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 36),
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 36),
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                border: Border.all(
                                    color: nature_button_clicked
                                        ? Colors.white
                                        : Color(0xff7D7D7D).withOpacity(0.5)),
                                color: nature_button_clicked
                                    ? Color(0xff674B3F)
                                    : null,
                              ),
                              child: Container(
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 13),
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 13),
                                child: Image.asset(
                                  'assets/locationdart.png',
                                  color: nature_button_clicked
                                      ? Colors.white
                                      : Color(0xff674B3F),
                                ),
                              ),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 6),
                            ),
                            Text(
                              'En pleine nature',
                              style: TextStyle(
                                fontFamily: 'Recoleta',
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w600,
                                color: nature_button_clicked
                                    ? Colors.white
                                    : Color(0xff674B3F),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          camping_button_clicked = !camping_button_clicked;
                        });
                      },
                      child: Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 153),
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 36),
                        decoration: BoxDecoration(
                          color:
                              camping_button_clicked ? Color(0xff674B3F) : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: camping_button_clicked
                                  ? Colors.white
                                  : Color(0xff7D7D7D).withOpacity(0.5)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 36),
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 36),
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                border: Border.all(
                                    color: camping_button_clicked
                                        ? Colors.white
                                        : Color(0xff7D7D7D).withOpacity(0.5)),
                                color: camping_button_clicked
                                    ? Color(0xff674B3F)
                                    : null,
                              ),
                              child: Container(
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 13),
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 13),
                                child: Image.asset(
                                  'assets/locationdart.png',
                                  color: camping_button_clicked
                                      ? Colors.white
                                      : Color(0xff674B3F),
                                ),
                              ),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 6),
                            ),
                            Text(
                              'Camping',
                              style: TextStyle(
                                fontFamily: 'Recoleta',
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w600,
                                color: camping_button_clicked
                                    ? Colors.white
                                    : Color(0xff674B3F),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 10),
                ),
                Row(
                  children: [
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          camping_car_button_clicked =
                              !camping_car_button_clicked;
                        });
                      },
                      child: Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 180),
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 36),
                        decoration: BoxDecoration(
                          color: camping_car_button_clicked
                              ? Color(0xff674B3F)
                              : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: camping_car_button_clicked
                                  ? Colors.white
                                  : Color(0xff7D7D7D).withOpacity(0.5)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 36),
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 36),
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                border: Border.all(
                                    color: camping_car_button_clicked
                                        ? Colors.white
                                        : Color(0xff7D7D7D).withOpacity(0.5)),
                                color: camping_car_button_clicked
                                    ? Color(0xff674B3F)
                                    : null,
                              ),
                              child: Container(
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 13),
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 13),
                                child: Image.asset(
                                  'assets/locationdart.png',
                                  color: camping_car_button_clicked
                                      ? Colors.white
                                      : Color(0xff674B3F),
                                ),
                              ),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 6),
                            ),
                            Text(
                              'Aire de camping-car',
                              style: TextStyle(
                                fontFamily: 'Recoleta',
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w600,
                                color: camping_car_button_clicked
                                    ? Colors.white
                                    : Color(0xff674B3F),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 20),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 150),
            width:
                AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 335),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Color(0xffFCFAF5),
            ),
            child: Column(
              children: [
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 37),
                  child: Row(
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 10),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'Activités',
                            style: TextStyle(
                              fontFamily: 'Recoleta',
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 16),
                              fontWeight: FontWeight.w600,
                              color: Color(0xff7D7D7D),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          move_button_clicked = !move_button_clicked;
                        });
                      },
                      child: Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 150),
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 44),
                        decoration: BoxDecoration(
                          color: move_button_clicked ? Color(0xff519442) : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Color(0xff519442)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 10),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 20),
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 20),
                              child: Container(
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 20),
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 20),
                                child: Image.asset(
                                  'assets/locationdart.png',
                                  color: move_button_clicked
                                      ? Colors.white
                                      : Color(0xff519442),
                                ),
                              ),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 6),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Move',
                                  style: TextStyle(
                                    fontFamily: 'Recoleta',
                                    fontSize: AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 14),
                                    fontWeight: FontWeight.w600,
                                    color: move_button_clicked
                                        ? Colors.white
                                        : Color(0xff519442),
                                  ),
                                ),
                                Text('Activités sportives',
                                    style: GoogleFonts.poppins(
                                      fontSize: AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 12),
                                      fontWeight: FontWeight.w400,
                                      color: move_button_clicked
                                          ? Colors.white
                                          : Color(0xff519442),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          discover_button_clicked = !discover_button_clicked;
                        });
                      },
                      child: Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 150),
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 44),
                        decoration: BoxDecoration(
                          color: discover_button_clicked
                              ? Color(0xffF16633)
                              : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Color(0xffF16633)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 10),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 20),
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 20),
                              child: Container(
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 20),
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 20),
                                child: Image.asset(
                                  'assets/locationdart.png',
                                  color: discover_button_clicked
                                      ? Colors.white
                                      : Color(0xffF16633),
                                ),
                              ),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 6),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Discover',
                                  style: TextStyle(
                                    fontFamily: 'Recoleta',
                                    fontSize: AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 14),
                                    fontWeight: FontWeight.w600,
                                    color: discover_button_clicked
                                        ? Colors.white
                                        : Color(0xffF16633),
                                  ),
                                ),
                                Text('Escapades culturelles',
                                    style: GoogleFonts.poppins(
                                      fontSize: AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 9),
                                      fontWeight: FontWeight.w400,
                                      color: discover_button_clicked
                                          ? Colors.white
                                          : Color(0xffF16633),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 10),
                ),
                Row(
                  children: [
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          eat_button_clicked = !eat_button_clicked;
                        });
                      },
                      child: Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 150),
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 44),
                        decoration: BoxDecoration(
                          color: eat_button_clicked ? Color(0xffF8AB39) : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Color(0xffF8AB39)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 10),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 20),
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 20),
                              child: Container(
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 20),
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 20),
                                child: Image.asset(
                                  'assets/locationdart.png',
                                  color: eat_button_clicked
                                      ? Colors.white
                                      : Color(0xffF8AB39),
                                ),
                              ),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 6),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Eat',
                                  style: TextStyle(
                                    fontFamily: 'Recoleta',
                                    fontSize: AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 14),
                                    fontWeight: FontWeight.w600,
                                    color: eat_button_clicked
                                        ? Colors.white
                                        : Color(0xffF8AB39),
                                  ),
                                ),
                                Text('Étapes culinaires',
                                    style: GoogleFonts.poppins(
                                      fontSize: AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 12),
                                      fontWeight: FontWeight.w400,
                                      color: eat_button_clicked
                                          ? Colors.white
                                          : Color(0xffF8AB39),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          experience_button_clicked =
                              !experience_button_clicked;
                        });
                      },
                      child: Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 150),
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 44),
                        decoration: BoxDecoration(
                          color: experience_button_clicked
                              ? Color(0xff006696)
                              : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Color(0xff006696)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 10),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 20),
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 20),
                              child: Container(
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 20),
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 20),
                                child: Image.asset(
                                  'assets/locationdart.png',
                                  color: experience_button_clicked
                                      ? Colors.white
                                      : Color(0xff006696),
                                ),
                              ),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 6),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Experience',
                                  style: TextStyle(
                                    fontFamily: 'Recoleta',
                                    fontSize: AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 14),
                                    fontWeight: FontWeight.w600,
                                    color: experience_button_clicked
                                        ? Colors.white
                                        : Color(0xff006696),
                                  ),
                                ),
                                Text('Sorties nocturnes',
                                    style: GoogleFonts.poppins(
                                      fontSize: AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 9),
                                      fontWeight: FontWeight.w400,
                                      color: experience_button_clicked
                                          ? Colors.white
                                          : Color(0xff006696),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 20),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 134),
            width:
                AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 335),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Color(0xffFCFAF5),
            ),
            child: Column(
              children: [
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 37),
                  child: Row(
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 10),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'Services',
                            style: TextStyle(
                              fontFamily: 'Recoleta',
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 16),
                              fontWeight: FontWeight.w600,
                              color: Color(0xff7D7D7D),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          douche_button_clicked = !douche_button_clicked;
                        });
                      },
                      child: Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 104),
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 36),
                        decoration: BoxDecoration(
                          color:
                              douche_button_clicked ? Color(0xff3C575E) : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: douche_button_clicked
                                  ? Colors.white
                                  : Color(0xff3C575E).withOpacity(0.5)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 36),
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 36),
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                border: Border.all(
                                    color: douche_button_clicked
                                        ? Colors.white
                                        : Color(0xff3C575E).withOpacity(0.5)),
                                color: douche_button_clicked
                                    ? Color(0xff3C575E)
                                    : null,
                              ),
                              child: Container(
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 13),
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 13),
                                child: Image.asset(
                                  'assets/locationdart.png',
                                  color: douche_button_clicked
                                      ? Colors.white
                                      : Color(0xff3C575E),
                                ),
                              ),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 6),
                            ),
                            Text(
                              'Douche',
                              style: TextStyle(
                                fontFamily: 'Recoleta',
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w600,
                                color: douche_button_clicked
                                    ? Colors.white
                                    : Color(0xff3C575E),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          toilettes_button_clicked = !toilettes_button_clicked;
                        });
                      },
                      child: Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 104),
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 36),
                        decoration: BoxDecoration(
                          color: toilettes_button_clicked
                              ? Color(0xff3C575E)
                              : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: toilettes_button_clicked
                                  ? Colors.white
                                  : Color(0xff3C575E).withOpacity(0.5)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 36),
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 36),
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                border: Border.all(
                                    color: toilettes_button_clicked
                                        ? Colors.white
                                        : Color(0xff3C575E).withOpacity(0.5)),
                                color: toilettes_button_clicked
                                    ? Color(0xff3C575E)
                                    : null,
                              ),
                              child: Container(
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 13),
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 13),
                                child: Image.asset(
                                  'assets/locationdart.png',
                                  color: toilettes_button_clicked
                                      ? Colors.white
                                      : Color(0xff3C575E),
                                ),
                              ),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 6),
                            ),
                            Text(
                              'Toilettes',
                              style: TextStyle(
                                fontFamily: 'Recoleta',
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w600,
                                color: toilettes_button_clicked
                                    ? Colors.white
                                    : Color(0xff3C575E),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 10),
                ),
                Row(
                  children: [
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          laverie_button_clicked = !laverie_button_clicked;
                        });
                      },
                      child: Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 104),
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 36),
                        decoration: BoxDecoration(
                          color:
                              laverie_button_clicked ? Color(0xff3C575E) : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: laverie_button_clicked
                                  ? Colors.white
                                  : Color(0xff3C575E).withOpacity(0.5)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 36),
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 36),
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                border: Border.all(
                                    color: laverie_button_clicked
                                        ? Colors.white
                                        : Color(0xff3C575E).withOpacity(0.5)),
                                color: laverie_button_clicked
                                    ? Color(0xff3C575E)
                                    : null,
                              ),
                              child: Container(
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 13),
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 13),
                                child: Image.asset(
                                  'assets/locationdart.png',
                                  color: laverie_button_clicked
                                      ? Colors.white
                                      : Color(0xff3C575E),
                                ),
                              ),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 6),
                            ),
                            Text(
                              'Laverie',
                              style: TextStyle(
                                fontFamily: 'Recoleta',
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w600,
                                color: laverie_button_clicked
                                    ? Colors.white
                                    : Color(0xff3C575E),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          services_button_clicked = !services_button_clicked;
                        });
                      },
                      child: Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 104),
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 36),
                        decoration: BoxDecoration(
                          color: services_button_clicked
                              ? Color(0xff3C575E)
                              : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: services_button_clicked
                                  ? Colors.white
                                  : Color(0xff3C575E).withOpacity(0.5)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 36),
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 36),
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                border: Border.all(
                                    color: services_button_clicked
                                        ? Colors.white
                                        : Color(0xff3C575E).withOpacity(0.5)),
                                color: services_button_clicked
                                    ? Color(0xff3C575E)
                                    : null,
                              ),
                              child: Container(
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 13),
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 13),
                                child: Image.asset(
                                  'assets/locationdart.png',
                                  color: services_button_clicked
                                      ? Colors.white
                                      : Color(0xff3C575E),
                                ),
                              ),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 6),
                            ),
                            Text(
                              'Services',
                              style: TextStyle(
                                fontFamily: 'Recoleta',
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w600,
                                color: services_button_clicked
                                    ? Colors.white
                                    : Color(0xff3C575E),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 20),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 47),
              width:
                  AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 335),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Color(0xff413C3C),
              ),
              child: Center(
                child: Text(
                  'Filtrer',
                  style: GoogleFonts.poppins(
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 12),
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
