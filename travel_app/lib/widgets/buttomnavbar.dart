import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';

class BottomNavBar extends StatelessWidget {
  int index = 0;
  BottomNavBar({Key? key, required this.index}) : super(key: key);

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
          Navigator.pushNamed(context, '/userprofile');
          Provider.of<BottomNav>(context, listen: false).setOnItemTapped(value);
        }

        if (value == 1) {
          await FirebaseAuth.instance.signOut();
          Navigator.pop(context);
          Navigator.pushNamed(context, '/');
          Provider.of<BottomNav>(context, listen: false).setOnItemTapped(value);
        }
        if (value == 2) {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/restaurantspage');
          Provider.of<BottomNav>(context, listen: false).setOnItemTapped(value);
        }
      },
    );
  }
}
