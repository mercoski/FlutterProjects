import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/pages/restourantspage.dart';
import 'package:travel_app/pages/userprofile.dart';

class BottomNavBar extends StatelessWidget {
  int index = 0;
  UserClass? user;
  BottomNavBar({Key? key, required this.index, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.logout),
          label: 'Logout',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dinner_dining),
          label: 'Restaurants',
        ),
      ],
      currentIndex: index,
      selectedItemColor: Colors.amber[800],
      onTap: (value) async {
        print('$value ');
        if (value == 0) {
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => UserProfile(user: user)));
          Provider.of<BottomNav>(context, listen: false).setOnItemTapped(value);
        }

        if (value == 1) {
          await FirebaseAuth.instance.signOut();
          Navigator.pop(context);
          Navigator.pushNamed(context, '/');
          Provider.of<BottomNav>(context, listen: false).setOnItemTapped(value);
          Provider.of<UserClass>(context, listen: false).user_image = '';
          Provider.of<UserClass>(context, listen: false).user_name = 'Camper';
          Provider.of<UserClass>(context, listen: false).user_mail = '';
        }
        if (value == 2) {
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RestaurantsPage(user: user)));
          Provider.of<BottomNav>(context, listen: false).setOnItemTapped(value);
        }
      },
    );
  }
}
