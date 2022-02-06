import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/widgets/buttomnavbar.dart';
import 'package:travel_app/widgets/profilwidgets/profilbuttons.dart';
import 'package:travel_app/widgets/profilwidgets/profile_parameters_bottom.dart';
import 'package:travel_app/widgets/profilwidgets/profile_profile_bottom.dart';
import 'package:travel_app/widgets/profilwidgets/profile_top.dart';

class ParametersPage extends StatelessWidget {
  UserClass? user;
  ParametersPage({Key? key, required this.user}) : super(key: key);

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
        body: Center(
          child: Container(
            width:
                AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 335),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                profile_top(
                  user: user,
                  selected: 'Paramètres',
                ),
                profile_parameters_bottom(user: user)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
