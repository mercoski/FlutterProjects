import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bike_scooter),
          label: 'Travel',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dinner_dining),
          label: 'Restaurants',
        ),
      ],
      currentIndex:
          Provider.of<BottomNav>(context, listen: false).selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: (value) {
        Provider.of<BottomNav>(context, listen: false).setOnItemTapped(value);
        print('$value ');
        //To-do page navigation will be added.
        setState(() {});
      },
    );
  }
}
