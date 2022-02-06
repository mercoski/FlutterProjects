import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/pages/profil/conditionsgeneralespage.dart';
import 'package:travel_app/pages/profil/mentionslegalespage.dart';
import 'package:travel_app/pages/profil/politiquepage.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';

class profile_parameters_bottom extends StatefulWidget {
  const profile_parameters_bottom({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserClass? user;

  @override
  State<profile_parameters_bottom> createState() =>
      _profile_parameters_bottomState();
}

class _profile_parameters_bottomState extends State<profile_parameters_bottom> {
  bool notification_status = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 360),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 38),
            child: Card(
              color: Color(0xFFFCFAF5),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 14),
                      ),
                      Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 15),
                          child: const Icon(
                            Icons.notifications,
                            size: 15,
                          )),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 14),
                      ),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 284),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                print('Notification');
                              },
                              child: Text(
                                'Activer les notifications',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 11),
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF413C3C),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 11,
                              width: 25,
                              child: Transform.scale(
                                scale: 0.5,
                                transformHitTests: false,
                                child: CupertinoSwitch(
                                  activeColor: Color(0xff519442),
                                  value: notification_status,
                                  onChanged: (value) {
                                    setState(() {
                                      notification_status = value;
                                      print(notification_status);
                                    });
                                  },
                                ),
                              ),
                            ),
                            Container(
                              width: AdaptiveScreenSize()
                                  .getadaptiveScreenSizeWidth(context, 10),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 12),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 140),
            child: Card(
              color: Color(0xFFFCFAF5),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 14),
                      ),
                      Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 15),
                          child: const Icon(
                            Icons.favorite,
                            size: 15,
                          )),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 14),
                      ),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 284),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Inviter un ami',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF413C3C),
                              ),
                            ),
                            Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(
                        flex: 14,
                      ),
                      const Expanded(
                          flex: 15,
                          child: Icon(
                            Icons.star,
                            size: 15,
                          )),
                      const Spacer(
                        flex: 14,
                      ),
                      Expanded(
                        flex: 292,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Donner mon avis sur l’application',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF413C3C),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 11,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(
                        flex: 14,
                      ),
                      const Expanded(
                          flex: 15,
                          child: Icon(
                            Icons.info,
                            size: 15,
                          )),
                      const Spacer(
                        flex: 14,
                      ),
                      Expanded(
                        flex: 292,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Aide',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF413C3C),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 11,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(
                        flex: 14,
                      ),
                      const Expanded(
                          flex: 15,
                          child: Icon(
                            Icons.chat,
                            size: 15,
                          )),
                      const Spacer(
                        flex: 14,
                      ),
                      Expanded(
                        flex: 292,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nous contacter',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF413C3C),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 11,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 12),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 106),
            child: Card(
              color: Color(0xFFFCFAF5),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 14),
                      ),
                      Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 15),
                          child: Icon(
                            Icons.document_scanner_rounded,
                            size: 15,
                          )),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 14),
                      ),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 284),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MentionLegalesPage(
                                              user: widget.user,
                                            )));
                              },
                              child: Text(
                                'Mentions légales',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 11),
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF413C3C),
                                ),
                              ),
                            ),
                            Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 14),
                      ),
                      Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 15),
                          child: Icon(
                            Icons.badge,
                            size: 15,
                          )),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 14),
                      ),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 284),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ConditionsGeneralesPage(
                                              user: widget.user,
                                            )));
                              },
                              child: Text(
                                'Conditions générales d’utilisation',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 11),
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF413C3C),
                                ),
                              ),
                            ),
                            Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 14),
                      ),
                      Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 15),
                          child: Icon(
                            Icons.account_box_rounded,
                            size: 15,
                          )),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 14),
                      ),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 284),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PolitiquesPage(
                                              user: widget.user,
                                            )));
                              },
                              child: Text(
                                'Politique de confidentialité',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 11),
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF413C3C),
                                ),
                              ),
                            ),
                            Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 12),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 39),
            child: Card(
              color: Color(0xFFFCFAF5),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 14),
                      ),
                      Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 15),
                          child: Icon(
                            Icons.logout,
                            size: 15,
                          )),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 14),
                      ),
                      Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 284),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                await FirebaseAuth.instance.signOut();
                                Navigator.pop(context);
                                Navigator.pushNamed(context, '/');
                              },
                              child: Text(
                                'Déconnexion',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 11),
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF413C3C),
                                ),
                              ),
                            ),
                            Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
