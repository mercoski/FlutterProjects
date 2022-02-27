import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/functions/loginfunction.dart';
import 'package:travel_app/main.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:travel_app/widgets/InputField.dart';
import 'package:travel_app/widgets/buttomnavbar.dart';
import 'package:travel_app/widgets/categorycards.dart';
import 'package:travel_app/widgets/eventcards.dart';
import 'package:travel_app/widgets/homepage_topwidget.dart';

class UserProfile extends StatelessWidget {
  UserProfile({Key? key, required this.user}) : super(key: key);
  final UserClass? user;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNav(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: false,
          titleSpacing:
              AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 20),
          title: Text(
            'Que recherchez-vous ${user?.user_name?.split(" ")[0].toUpperCase()} ?',
            style: TextStyle(
                fontFamily: 'Recoleta',
                fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 16),
                fontWeight: FontWeight.w600,
                color: Color(0xff413C3C)),
            textAlign: TextAlign.left,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Color(0xff413C3C),
                )),
          ],
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xffFCFAF5),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 20),
                ),
                SizedBox(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 130),
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 333),
                  child: HomePageTopWidget(
                    selected: 'Itinéraires',
                    user: user,
                  ),
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 10),
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 60),
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 333),
                  child: Text(
                    'Des idées d’itinéraires pour votre prochain voyage',
                    style: TextStyle(
                      fontFamily: 'Recoleta',
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 22),
                      fontWeight: FontWeight.w600,
                      color: Color(0xff413C3C),
                    ),
                  ),
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 10),
                ),
                Container(
                    height: AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 250),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 20),
                        ),
                        EventCards(
                          event_id: '1',
                          assetImage: AssetImage('assets/signin.jpg'),
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 20),
                        ),
                        EventCards(
                            event_id: '2',
                            assetImage: AssetImage('assets/Splace.jpg')),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 20),
                        ),
                      ],
                    )),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 25),
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 60),
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 333),
                  child: Text(
                    'Découvrez nos activités thématiques',
                    style: TextStyle(
                      fontFamily: 'Recoleta',
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 22),
                      fontWeight: FontWeight.w600,
                      color: Color(0xff413C3C),
                    ),
                  ),
                ),
                Container(
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 10),
                ),
                Container(
                    height: AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 250),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 20),
                        ),
                        CategoryCards(
                          categoryimage: 'movecategory.png',
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 20),
                        ),
                        CategoryCards(
                          categoryimage: 'eatcategory.png',
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 20),
                        ),
                        CategoryCards(
                          categoryimage: 'discovercategory.png',
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 20),
                        ),
                        CategoryCards(
                          categoryimage: 'experiencecategory.png',
                        ),
                        Container(
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 20),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar(
          index: 0,
          user: user,
        ),
      ),
    );
  }
}
