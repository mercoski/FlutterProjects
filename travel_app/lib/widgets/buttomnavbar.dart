import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/pages/favorispage.dart';
import 'package:travel_app/pages/map.dart';
import 'package:travel_app/pages/profil/profilpage.dart';
import 'package:travel_app/pages/userprofile.dart';
import 'package:travel_app/pages/voyagespage.dart';

class BottomNavBar extends StatelessWidget {
  int index = 0;
  UserClass? user;
  BottomNavBar({Key? key, required this.index, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      items: [
        const BottomNavigationBarItem(
          icon: SizedBox(
              height: 30,
              child: Icon(
                Icons.home_outlined,
              )),
          label: 'Accueil',
        ),
        const BottomNavigationBarItem(
          icon: SizedBox(
              height: 30,
              child: Icon(
                Icons.map,
              )),
          label: 'Carte',
        ),
        const BottomNavigationBarItem(
          icon: SizedBox(
              height: 30,
              child: Icon(
                Icons.favorite_border,
              )),
          label: 'Favoris',
        ),
        const BottomNavigationBarItem(
          icon: SizedBox(
              height: 30,
              child: Icon(
                Icons.pin_drop_outlined,
              )),
          label: 'Voyages',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 30,
            child: CircleAvatar(
              radius: 20, // Image radius
              backgroundImage: NetworkImage('${user?.user_image}'),
            ),
          ),
          label: 'Profil',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      iconSize: 20,
      showUnselectedLabels: true,
      currentIndex: index,
      selectedFontSize: 12,
      selectedIconTheme: IconThemeData(size: 20),
      unselectedIconTheme: IconThemeData(size: 20),
      unselectedItemColor: Colors.black,
      unselectedLabelStyle: TextStyle(color: Colors.black),
      selectedItemColor: const Color(0xff006696),
      onTap: (value) async {
        print('$value ');
        if (value == 0) {
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => UserProfile(user: user)));
          Provider.of<BottomNav>(context, listen: false).setOnItemTapped(value);
        }

        if (value == 1) {
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MapScreen(user: user)));
          Provider.of<BottomNav>(context, listen: false).setOnItemTapped(value);
        }
        if (value == 2) {
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => FavorisPage(user: user)));
          Provider.of<BottomNav>(context, listen: false).setOnItemTapped(value);
        }
        if (value == 3) {
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => VoyagesPage(user: user)));
          Provider.of<BottomNav>(context, listen: false).setOnItemTapped(value);
        }
        if (value == 4) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProfilPage(user: user)));
          Provider.of<BottomNav>(context, listen: false).setOnItemTapped(value);
        }
      },
    );
  }
}
