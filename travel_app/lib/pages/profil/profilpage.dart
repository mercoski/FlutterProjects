import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/pages/profil/parameterspage.dart';
import 'package:travel_app/widgets/buttomnavbar.dart';
import 'package:travel_app/widgets/profilwidgets/profilbuttons.dart';
import 'package:travel_app/widgets/profilwidgets/profile_profile_bottom.dart';
import 'package:travel_app/widgets/profilwidgets/profile_top.dart';

class ProfilPage extends StatelessWidget {
  UserClass? user;
  ProfilPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String selected = 'Parameters';
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
          child: FractionallySizedBox(
            widthFactor: 0.88,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                profile_top(
                  user: user,
                  selected: 'Profil',
                ),
                profile_profile_bottom(user: user),
                const Spacer(flex: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
