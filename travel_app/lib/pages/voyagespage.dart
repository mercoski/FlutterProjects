import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/widgets/buttomnavbar.dart';

class VoyagesPage extends StatelessWidget {
  UserClass? user;
  VoyagesPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNav(),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavBar(
            index: 3,
            user: user,
          )),
    );
  }
}
