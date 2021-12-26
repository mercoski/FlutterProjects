// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    LoginPage(),
  );
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Coffe Shop App'),
          backgroundColor: Colors.brown[300],
        ),
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  height: 50,
                ),
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.lime,
                  backgroundImage: NetworkImage(
                      'https://i0.wp.com/www.icon0.com/wp-content/uploads/2021/04/stock-photo-coffee-icon-sign-design-12622.jpg?fit=358%2C400&ssl=1'),
                ),
                Text(
                  'Coffe Shop',
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.brown[900],
                      fontFamily: 'Rock'),
                ),
                Divider(),
                Text(
                  'Bir Fincan Uzaginizda',
                  style: GoogleFonts.pacifico(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                Divider(),
                Column(
                  children: [
                    Card(
                      color: Colors.brown[900],
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: ListTile(
                        leading:
                            Icon(Icons.mail, size: 25, color: Colors.white),
                        title: Text(
                          'mertcanerbasiemk@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.brown[900],
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: ListTile(
                        leading:
                            Icon(Icons.phone, size: 25, color: Colors.white),
                        title: Text(
                          '0545 516 26 88',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
