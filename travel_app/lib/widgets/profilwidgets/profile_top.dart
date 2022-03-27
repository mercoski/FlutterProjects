import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/pages/profil/parameterspage.dart';
import 'package:travel_app/pages/profil/profilpage.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:travel_app/widgets/profilwidgets/profilbuttons.dart';

class profile_top extends StatefulWidget {
  profile_top({Key? key, required this.user, required this.selected})
      : super(key: key);

  final UserClass? user;
  String selected;

  @override
  State<profile_top> createState() => _profile_topState();
}

class _profile_topState extends State<profile_top> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 350),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      width: AdaptiveScreenSize().getadaptiveScreenSizeWidth(
                    context,
                    257,
                  )),
                  Container(
                      width: AdaptiveScreenSize().getadaptiveScreenSizeWidth(
                        context,
                        78,
                      ),
                      child: Text(
                        'Enregistrer',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            fontSize: AdaptiveTextSize()
                                .getadaptiveTextSize(context, 14),
                            fontWeight: FontWeight.w400,
                            color: Color(0xff006696)),
                      )),
                ],
              ),
            ),
            Container(
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 4),
            ),
            Container(
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 1),
              color: Color(0xFFB7B7B7),
            ),
            Container(
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 29),
            ),
            Container(
              height: AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 115),
              width:
                  AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 115),
              child: GestureDetector(
                onTap: () {
                  getImage(source: ImageSource.gallery);
                },
                child: CircleAvatar(
                  radius: 30, // Image radius
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    clipBehavior: Clip.antiAlias,
                    child: imageFile != null
                        ? Image.file(
                            imageFile!,
                            width: AdaptiveScreenSize()
                                .getadaptiveScreenSizeWidth(context, 115),
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 115),
                            fit: BoxFit.cover,
                          )
                        : widget.user?.user_image == null
                            ? Icon(Icons.account_box_outlined,
                                size: 35, color: Colors.black)
                            : Image.network('${widget.user?.user_image}'),
                  ),
                ),
              ),
            ),
            Container(
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 14),
            ),
            Container(
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 25),
              child: Center(
                child: Text(
                  'Bienvenue',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 18),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
                height: AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 41),
                child: Center(
                  child: Text(
                    '${widget.user?.user_name?.toUpperCase()}',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Recoleta',
                        fontSize:
                            AdaptiveTextSize().getadaptiveTextSize(context, 30),
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Container(
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 23),
            ),
            Container(
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 30),
              child: Column(
                children: [
                  Container(
                    height: AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            widget.selected = 'Profil';
                            setState(() {});
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ProfilPage(user: widget.user)));
                          },
                          child: ProfilButtons(
                            buttontext: 'Profil',
                            isselected:
                                widget.selected == 'Profil' ? true : false,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            widget.selected = 'Abonnement';
                            setState(() {});
                          },
                          child: ProfilButtons(
                            buttontext: 'Abonnement',
                            isselected:
                                widget.selected == 'Abonnement' ? true : false,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            widget.selected = 'Notifications';
                            setState(() {});
                          },
                          child: ProfilButtons(
                            buttontext: 'Notifications',
                            isselected: widget.selected == 'Notifications'
                                ? true
                                : false,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            widget.selected = 'Paramètres';
                            setState(() {});
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ParametersPage(user: widget.user)));
                          },
                          child: ProfilButtons(
                            buttontext: 'Paramètres',
                            isselected:
                                widget.selected == 'Paramètres' ? true : false,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().getImage(source: source);
    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}
