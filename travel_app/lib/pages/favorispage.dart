import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/functions/tutesregionsalert.dart';
import 'package:travel_app/models/data.dart';
import 'package:travel_app/pages/notificationspage.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:travel_app/widgets/buttomnavbar.dart';
import 'package:travel_app/widgets/categorycards.dart';
import 'package:travel_app/widgets/eventcards.dart';
import 'package:travel_app/widgets/favoriseventcards.dart';
import 'package:travel_app/widgets/favorispagetopwidget.dart';
import 'dart:math' as math;

class FavorisPage extends StatelessWidget {
  UserClass? user;
  FavorisPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNav(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavBar(
          index: 2,
          user: user,
        ),
        appBar: AppBar(
          centerTitle: false,
          titleSpacing: const AdaptiveScreenSize()
              .getadaptiveScreenSizeWidth(context, 20),
          title: Text(
            'Mes favoris',
            style: TextStyle(
                fontFamily: 'Recoleta',
                fontSize:
                    const AdaptiveTextSize().getadaptiveTextSize(context, 16),
                fontWeight: FontWeight.w600,
                color: const Color(0xff413C3C)),
            textAlign: TextAlign.left,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationPage(
                                user: user,
                              )));
                },
                icon: const Icon(
                  Icons.notifications,
                  color: Color(0xff413C3C),
                )),
          ],
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffFCFAF5),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 20),
              ),
              SizedBox(
                width: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeWidth(context, 335),
                child: FavorisPageTopWidget(
                  selected: 'Itinéraires',
                  user: user,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
