import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/functions/aletdialog_profile1.dart';
import 'package:travel_app/utils/adaptivetext.dart';

class profile_profile_bottom extends StatefulWidget {
  const profile_profile_bottom({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserClass? user;

  @override
  State<profile_profile_bottom> createState() => _profile_profile_bottomState();
}

class _profile_profile_bottomState extends State<profile_profile_bottom> {
  bool status_wc = false;
  bool status_douche = false;
  bool status_adc = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 360,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 170,
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
                      const Spacer(
                        flex: 22,
                      ),
                      Expanded(
                        flex: 302,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'PRÉNOM',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFB7B7B7),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        ProfileAlert(context,
                                            title_text: 'PRÉNOM',
                                            body_text:
                                                '${widget.user?.user_name?.split(" ")[0].toUpperCase()}',
                                            user: widget.user);
                                      },
                                      child: Text(
                                        '${widget.user?.user_name?.split(" ")[0].toUpperCase()}',
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 11),
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF413C3C),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 11,
                                  ),
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
                        flex: 22,
                      ),
                      Expanded(
                        flex: 302,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'NOM',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFB7B7B7),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        ProfileAlert(context,
                                            title_text: 'NOM',
                                            body_text:
                                                '${widget.user?.user_name?.split(" ")[1].toUpperCase()}',
                                            user: widget.user);
                                      },
                                      child: Text(
                                        '${widget.user?.user_name?.split(" ")[1].toUpperCase()}',
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 11),
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF413C3C),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 11,
                                  ),
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
                        flex: 22,
                      ),
                      Expanded(
                        flex: 302,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'DATE DE NAISSANCE',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFB7B7B7),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        ProfileAlert(context,
                                            title_text: 'DATE DE NAISSANCE',
                                            body_text: 'jj / mm / année',
                                            user: widget.user);
                                      },
                                      child: Text(
                                        'jj / mm / année',
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 11),
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF413C3C),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 11,
                                  ),
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
                        flex: 22,
                      ),
                      Expanded(
                        flex: 302,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'E-MAIL',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFB7B7B7),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        ProfileAlert(context,
                                            title_text: 'E-MAIL',
                                            body_text:
                                                '${widget.user?.user_mail}',
                                            user: widget.user);
                                      },
                                      child: Text(
                                        '${widget.user?.user_mail}',
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 11),
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF413C3C),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 11,
                                  ),
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
                        flex: 22,
                      ),
                      Expanded(
                        flex: 302,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'MOT DE PASSE',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFB7B7B7),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        print("Basıldı");
                                      },
                                      child: Text(
                                        '********',
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 11),
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF413C3C),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 11,
                                  ),
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
          const Spacer(flex: 20),
          Expanded(
            flex: 170,
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
                      const Spacer(
                        flex: 22,
                      ),
                      Expanded(
                        flex: 302,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'VÉHICULE',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFB7B7B7),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        print("Basıldı");
                                      },
                                      child: Text(
                                        'Van',
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 11),
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF413C3C),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 11,
                                  ),
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
                        flex: 22,
                      ),
                      Expanded(
                        flex: 302,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'WC',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFB7B7B7),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    height: 11,
                                    width: 25,
                                    child: Transform.scale(
                                      scale: 0.5,
                                      transformHitTests: false,
                                      child: CupertinoSwitch(
                                        activeColor: Color(0xff519442),
                                        value: status_wc,
                                        onChanged: (value) {
                                          setState(() {
                                            status_wc = value;
                                            print(status_wc);
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 11,
                                  ),
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
                        flex: 22,
                      ),
                      Expanded(
                        flex: 302,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'DOUCHE',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFB7B7B7),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    height: 11,
                                    width: 25,
                                    child: Transform.scale(
                                      scale: 0.5,
                                      transformHitTests: false,
                                      child: CupertinoSwitch(
                                        activeColor: Color(0xff519442),
                                        value: status_douche,
                                        onChanged: (value) {
                                          setState(() {
                                            status_douche = value;
                                            print(status_douche);
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 11,
                                  ),
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
                        flex: 22,
                      ),
                      Expanded(
                        flex: 302,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ANIMAUX DE COMPAGNIE',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFB7B7B7),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    height: 11,
                                    width: 25,
                                    child: Transform.scale(
                                      scale: 0.5,
                                      transformHitTests: false,
                                      child: CupertinoSwitch(
                                        activeColor: Color(0xff519442),
                                        value: status_adc,
                                        onChanged: (value) {
                                          setState(() {
                                            status_adc = value;
                                            print(status_adc);
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 11,
                                  ),
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
                        flex: 22,
                      ),
                      Expanded(
                        flex: 302,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'VOYAGE',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFB7B7B7),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        print("Basıldı");
                                      },
                                      child: Text(
                                        'En couple',
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 11),
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF413C3C),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 11,
                                  ),
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
        ],
      ),
    );
  }
}
