import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/functions/tutesregionsalert.dart';
import 'package:travel_app/models/data.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:travel_app/widgets/favoriseventcards.dart';

class FavorisItinaresBottom extends StatelessWidget {
  const FavorisItinaresBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: const AdaptiveScreenSize()
              .getadaptiveScreenSizeHeight(context, 10),
        ),
        SizedBox(
          width: const AdaptiveScreenSize()
              .getadaptiveScreenSizeWidth(context, 335),
          child: Text(
            'RÉGIONS',
            style: GoogleFonts.poppins(
                fontSize:
                    const AdaptiveTextSize().getadaptiveTextSize(context, 12),
                color: const Color(0xffB7B7B7),
                fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          height: const AdaptiveScreenSize()
              .getadaptiveScreenSizeHeight(context, 5),
        ),
        Container(
            height: const AdaptiveScreenSize()
                .getadaptiveScreenSizeHeight(context, 36),
            width: const AdaptiveScreenSize()
                .getadaptiveScreenSizeWidth(context, 335),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: const Color(0xff7D7D7D)),
            ),
            child: GestureDetector(
              onTap: () {
                tutesRegionsAlert(context,
                    data: LocationsData, height_of_texts: 350, all_space: 400);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 15),
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 19),
                  ),
                  SizedBox(
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 19),
                    child: Text(
                      'Toutes les régions',
                      style: TextStyle(
                        fontFamily: 'Recoleta',
                        fontSize: const AdaptiveTextSize()
                            .getadaptiveTextSize(context, 14),
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff413C3C),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 10),
                    child: const RotatedBox(
                      quarterTurns: 1,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 20),
                  )
                ],
              ),
            )),
        Container(
          height: const AdaptiveScreenSize()
              .getadaptiveScreenSizeHeight(context, 10),
        ),
        SizedBox(
          width: const AdaptiveScreenSize()
              .getadaptiveScreenSizeWidth(context, 335),
          child: Text(
            'DÉPARTEMENTS',
            style: GoogleFonts.poppins(
                fontSize:
                    const AdaptiveTextSize().getadaptiveTextSize(context, 12),
                color: const Color(0xffB7B7B7),
                fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          height: const AdaptiveScreenSize()
              .getadaptiveScreenSizeHeight(context, 5),
        ),
        GestureDetector(
          onTap: () {
            tutesRegionsAlert(context,
                data: departmentsData, height_of_texts: 120, all_space: 170);
          },
          child: Container(
              height: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 36),
              width: const AdaptiveScreenSize()
                  .getadaptiveScreenSizeWidth(context, 335),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: const Color(0xff7D7D7D)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 15),
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 19),
                  ),
                  SizedBox(
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 19),
                    child: Text(
                      'Tous les départements',
                      style: TextStyle(
                        fontFamily: 'Recoleta',
                        fontSize: const AdaptiveTextSize()
                            .getadaptiveTextSize(context, 14),
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff413C3C),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 10),
                    child: const RotatedBox(
                      quarterTurns: 1,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.black,
                        ),
                        onPressed: null,
                      ),
                    ),
                  ),
                  Container(
                    width: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 20),
                  )
                ],
              )),
        ),
        Container(
          height: const AdaptiveScreenSize()
              .getadaptiveScreenSizeHeight(context, 20),
        ),
        Container(
            width: const AdaptiveScreenSize()
                .getadaptiveScreenSizeWidth(context, 335),
            height: const AdaptiveScreenSize()
                .getadaptiveScreenSizeWidth(context, 405),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 20),
                ),
                FavorisEventCards(
                  event_id: '1',
                  assetImage: const AssetImage('assets/signin.jpg'),
                ),
                Container(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 20),
                ),
                FavorisEventCards(
                    event_id: '2',
                    assetImage: const AssetImage('assets/Splace.jpg')),
                Container(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 20),
                ),
                FavorisEventCards(
                    event_id: '2',
                    assetImage: const AssetImage('assets/Splace.jpg')),
                Container(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 20),
                ),
                FavorisEventCards(
                    event_id: '2',
                    assetImage: const AssetImage('assets/Splace.jpg')),
                Container(
                  height: const AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 20),
                ),
              ],
            )),
        Container(
          height: const AdaptiveScreenSize()
              .getadaptiveScreenSizeHeight(context, 25),
        ),
      ],
    );
  }
}
