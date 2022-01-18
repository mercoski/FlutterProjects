import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/functions/loginfunction.dart';
import 'package:travel_app/main.dart';
import 'package:travel_app/widgets/InputField.dart';
import 'package:travel_app/widgets/buttomnavbar.dart';

class UserProfile extends StatelessWidget {
  UserProfile({Key? key, required this.user}) : super(key: key);
  int EventIndex = 0;
  final UserClass? user;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNav(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Center(
          child: FractionallySizedBox(
            widthFactor: 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 54, child: Container()),
                Expanded(
                  flex: 50,
                  child: ListTile(
                    title: Text(
                      'Bienvenue ${user?.user_name?.split(" ")[0].toUpperCase()}',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.averiaSerifLibre(
                          fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    subtitle: Text(
                      'Ta prochaine aventure commence ici',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(fontSize: 13),
                    ),
                    trailing: CircleAvatar(
                      radius: 30, // Image radius
                      backgroundImage: NetworkImage('${user?.user_image}'),
                      onBackgroundImageError: (exception, stackTrace) {},
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                Expanded(flex: 14, child: Container()),
                Expanded(
                  flex: 55,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 290,
                        child: InputField(
                          autocorrect: false,
                          enablesuggestions: false,
                          obscureText: false,
                          hintText: 'Search ...',
                          textEditingController: Provider.of<UserClass>(context)
                              .textEditingController_search,
                        ),
                      ),
                      Expanded(
                          flex: 40,
                          child: IconButton(
                            splashColor: Colors.transparent,
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              print('Search button');
                            },
                          ))
                    ],
                  ),
                ),
                Expanded(flex: 14, child: Container()),
                Expanded(
                  flex: 155,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          image: AssetImage('assets/signin.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Expanded(flex: 5, child: Container()),
                Expanded(
                  flex: 49,
                  child: ListTile(
                    title: Text(
                      'Alsace',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.averiaSerifLibre(
                          fontSize: 22, fontWeight: FontWeight.w900),
                    ),
                    subtitle: Text(
                      'Du massif des vosges à Orschwihr',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    trailing: Text(
                      '4 Spots',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                  ),
                ),
                Expanded(flex: 31, child: Container()),
                Expanded(
                  flex: 30,
                  child: ListTile(
                    title: Text(
                      'Activities around you',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.averiaSerifLibre(
                          fontSize: 22, fontWeight: FontWeight.w900),
                    ),
                    subtitle: Text(
                      'Morbihan, de la terre a la mer',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                  ),
                ),
                Expanded(flex: 150, child: Container()),
                Expanded(
                  flex: 17,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'LAST TRIPS CREATED',
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: const Color(0xff8D8B8B)),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 15,
                            color: Color(0xff8D8B8B),
                          ),
                          onPressed: () {
                            EventIndex--;
                            print('Event index : $EventIndex');
                          },
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Color(0xff8D8B8B),
                          ),
                          onPressed: () {
                            EventIndex++;
                            print('Event index : $EventIndex');
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(flex: 10, child: Container()),
                Expanded(
                  flex: 70,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          image: AssetImage('assets/signin.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Expanded(flex: 15, child: Container()),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar(
          index: 0,
          user: user,
        ),
      ),
    );
  }
}
