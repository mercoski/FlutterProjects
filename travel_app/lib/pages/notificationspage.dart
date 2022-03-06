import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/pages/userprofile.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({Key? key, required this.user}) : super(key: key);

  final UserClass? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 30),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 20),
            child: Row(
              children: [
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 20),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserProfile(
                                  user: user,
                                )));
                  },
                  child: Container(
                    width: AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 55),
                    child: Row(
                      children: [
                        Container(
                            width: AdaptiveScreenSize()
                                .getadaptiveScreenSizeWidth(context, 5),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 14,
                              color: Color(0xffF16633),
                            )),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 5),
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 45),
                          child: Text(
                            'Retour',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w400,
                                color: Color(0xffF16633)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 64),
                ),
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 96),
                  child: Text(
                    'Notifications',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Recoleta',
                        fontSize:
                            AdaptiveTextSize().getadaptiveTextSize(context, 16),
                        fontWeight: FontWeight.w600,
                        color: Color(0xff413C3C)),
                  ),
                ),
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 103),
                ),
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 12),
                  child: const Icon(
                    Icons.notifications,
                    color: Color(0xff413C3C),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 11),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 1),
            child: Container(
              color: Color(0xffA1A1A1),
            ),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 17),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 733),
            child: FractionallySizedBox(
              widthFactor: 0.86,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 70),
                    decoration: const BoxDecoration(
                      color: Color(0xffFCFAF5),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 15),
                        ),
                        const Icon(
                          Icons.settings,
                          size: 43,
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 18),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 7),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 224),
                              child: Text(
                                'Alsace',
                                style: GoogleFonts.poppins(
                                    fontSize: AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 12),
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 2),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 224),
                              child: Text(
                                'Un nouvel itinéraire est disponible !',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.fade,
                                maxLines: 1,
                                softWrap: true,
                              ),
                            ),
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 2),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 224),
                              child: Text(
                                'Créé avec Alsace Destination Tourisme',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 11),
                                  color: Color(0xffA1A1A1),
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.fade,
                                maxLines: 1,
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 10),
                        ),
                        Column(
                          children: [
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 10),
                            ),
                            GestureDetector(
                                onTap: () {
                                  print('object');
                                },
                                child: Icon(Icons.close, size: 14))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 14),
                  ),
                  Container(
                    height: AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 70),
                    decoration: const BoxDecoration(
                      color: Color(0xffFCFAF5),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 15),
                        ),
                        const Icon(
                          Icons.calculate,
                          size: 43,
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 18),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 7),
                            ),
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 2),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 224),
                              child: Text(
                                'Visualise l’affluence sur les spots',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 12),
                                  color: Color(0xff413C3C),
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.fade,
                                maxLines: 1,
                                softWrap: true,
                              ),
                            ),
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 2),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 224),
                              child: Text(
                                'Et découvre les alternatives autour de toi',
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 11),
                                  color: Color(0xffA1A1A1),
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.fade,
                                maxLines: 1,
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 10),
                        ),
                        Column(
                          children: [
                            Container(
                              height: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeHeight(context, 10),
                            ),
                            GestureDetector(
                                onTap: () {
                                  print('object');
                                },
                                child: Icon(Icons.close, size: 14))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
