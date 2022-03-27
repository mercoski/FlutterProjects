import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/models/data.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';

class VoyagesBottomComingScreen extends StatefulWidget {
  const VoyagesBottomComingScreen({Key? key}) : super(key: key);

  @override
  _VoyagesBottomComingScreenState createState() =>
      _VoyagesBottomComingScreenState();
}

class _VoyagesBottomComingScreenState extends State<VoyagesBottomComingScreen> {
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
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 50),
            child: Row(
              children: [
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 20),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.close,
                    size: 20,
                    color: Color(0xffF16633),
                  ),
                ),
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 5),
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
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 25),
            child: Row(
              children: [
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 20),
                ),
                Text(
                  'Vacances de Pâques',
                  style: TextStyle(
                    fontFamily: 'Recoleta',
                    fontSize:
                        AdaptiveTextSize().getadaptiveTextSize(context, 16),
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 75),
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffE16E42),
                  ),
                  child: Center(
                    child: Text('En cours',
                        style: GoogleFonts.poppins(
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(context, 13),
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        )),
                  ),
                ),
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 20),
                ),
              ],
            ),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 5),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 17),
            child: Row(
              children: [
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 20),
                ),
                Text('Début : 27/04/2022',
                    style: GoogleFonts.poppins(
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 12),
                      fontWeight: FontWeight.w400,
                      color: Color(0xff413C3C),
                    )),
                const Spacer(),
                Text('Fin : 18/05/2022',
                    style: GoogleFonts.poppins(
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 12),
                      fontWeight: FontWeight.w400,
                      color: Color(0xff413C3C),
                    )),
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 101),
                ),
              ],
            ),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 5),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 17),
            child: Row(
              children: [
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 20),
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
                        fontSize:
                            AdaptiveTextSize().getadaptiveTextSize(context, 12),
                        color: Color(0xff413C3C),
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                const Spacer(),
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
                        fontSize:
                            AdaptiveTextSize().getadaptiveTextSize(context, 12),
                        color: Color(0xff413C3C),
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 130),
                ),
              ],
            ),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 11),
          ),
          //Will be right slide
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 34),
            child: Row(
              children: [
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 20),
                ),
                Container(
                  color: Colors.red,
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 34),
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 355),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
