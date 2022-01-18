import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/widgets/buttomnavbar.dart';

class RestaurantsPage extends StatelessWidget {
  UserClass? user;
  RestaurantsPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNav(),
      child: Scaffold(
        bottomNavigationBar: BottomNavBar(
          index: 2,
          user: user,
        ),
        body: Center(
          child: Text('Restaurant'),
        ),
      ),
    );
  }
}
