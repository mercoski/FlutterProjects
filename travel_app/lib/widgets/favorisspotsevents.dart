import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:travel_app/widgets/favoriteButtonWidget.dart';

class FavorisSpotsEventCards extends StatelessWidget {
  FavorisSpotsEventCards(
      {Key? key,
      required this.event_id,
      required this.bigIcon,
      required this.smallIcon,
      required this.text_title,
      required this.text_body})
      : super(key: key);
  String event_id;
  Icon bigIcon;
  Icon smallIcon;
  String text_title;
  String text_body;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height:
              AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 105),
          child: Column(
            children: [
              Container(
                height: AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 95),
                decoration: const BoxDecoration(
                  color: Color(0xffFCFAF5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 10),
                    ),
                    Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 42),
                        child: Column(
                          children: [
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 11),
                            ),
                            smallIcon,
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 9),
                            ),
                            bigIcon
                          ],
                        )),
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 12),
                    ),
                    Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 255),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 11),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 196),
                              child: Text(
                                text_title,
                                style: TextStyle(
                                  fontFamily: 'Recoleta',
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 14),
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff413C3C),
                                ),
                              ),
                            ),
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 2),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 255),
                              child: Text(
                                text_body,
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff7D7D7D),
                                ),
                                overflow: TextOverflow.fade,
                                maxLines: 2,
                                softWrap: true,
                              ),
                            ),
                            Spacer(),
                          ],
                        )),
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height:
              AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 122),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FavoriteButton(eventId: '1'),
            ],
          ),
        ),
      ],
    );
  }
}
