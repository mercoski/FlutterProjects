import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';

class EventCards extends StatelessWidget {
  const EventCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 217),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 147,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/signin.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                ),
              ),
            ),
            Expanded(
              flex: 103,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xffFCFAF5),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                ),
                child: Row(
                  children: [
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 15),
                    ),
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 160),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Escapade dans le Puy-de-Dôme',
                            style: TextStyle(
                              fontFamily: 'Recoleta',
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 18),
                              fontWeight: FontWeight.w600,
                              color: Color(0xff413C3C),
                            ),
                          ),
                          Text(
                            'Auvergne',
                            style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                color: Color(0xff413C3C),
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '3 spots / 36 km',
                            style: GoogleFonts.poppins(
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 12),
                              color: Color(0xff7D7D7D),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
