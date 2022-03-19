import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/models/data.dart';
import 'package:travel_app/pages/choisiruninitarepage.dart';
import 'package:travel_app/pages/preparervoyagepage.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:travel_app/widgets/buttomnavbar.dart';
import 'package:travel_app/widgets/preparervoyagewidget.dart';
import 'package:travel_app/widgets/voyagesBottomWidget.dart';

class VoyagesPage extends StatefulWidget {
  UserClass? user;
  VoyagesPage({Key? key, required this.user}) : super(key: key);

  @override
  State<VoyagesPage> createState() => _VoyagesPageState();
}

class _VoyagesPageState extends State<VoyagesPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNav(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavBar(
          index: 3,
          user: widget.user,
        ),
        appBar: AppBar(
          centerTitle: false,
          titleSpacing: const AdaptiveScreenSize()
              .getadaptiveScreenSizeWidth(context, 20),
          title: Text(
            'Mes voyages',
            style: TextStyle(
                fontFamily: 'Recoleta',
                fontSize:
                    const AdaptiveTextSize().getadaptiveTextSize(context, 16),
                fontWeight: FontWeight.w600,
                color: const Color(0xff413C3C)),
            textAlign: TextAlign.left,
          ),
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffFCFAF5),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 20),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PreparerVoyagePage(
                              user: widget.user,
                            )));
              },
              child: preparervoyagewidget(
                text: 'Préparer un nouveau voyage',
              ),
            ),
            Container(
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 20),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChoisirunitinerairePage(
                              user: widget.user,
                            )));
              },
              child: preparervoyagewidget(
                text: 'Choisir un itinéraire personnalisable',
              ),
            ),
            Container(
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 20),
            ),
            Container(
              width:
                  AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 335),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 76),
                    height: AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 25),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedVoyageButton = 'tous';
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedVoyageButton == 'tous'
                              ? Color(0xffF2EAD9)
                              : Color(0xffFCFAF5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border:
                              Border.all(color: Color(0xff707070), width: 0.1),
                        ),
                        child: Center(
                          child: Text(
                            'Tous',
                            style: TextStyle(
                              fontFamily: 'Recoleta',
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 13),
                              fontWeight: FontWeight.w600,
                              color: Color(0xff403C3C),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 76),
                    height: AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 25),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedVoyageButton = 'avenir';
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedVoyageButton == 'avenir'
                              ? Color(0xff296592)
                              : Color(0xffFCFAF5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border:
                              Border.all(color: Color(0xff707070), width: 0.1),
                        ),
                        child: Center(
                          child: Text(
                            'À venir',
                            style: TextStyle(
                              fontFamily: 'Recoleta',
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 13),
                              fontWeight: FontWeight.w600,
                              color: selectedVoyageButton == 'avenir'
                                  ? Colors.white
                                  : Color(0xff403C3C),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 75),
                    height: AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 25),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedVoyageButton = 'encours';
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedVoyageButton == 'encours'
                              ? Color(0xffE16E42)
                              : Color(0xffFCFAF5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border:
                              Border.all(color: Color(0xff707070), width: 0.1),
                        ),
                        child: Center(
                          child: Text(
                            'En cours',
                            style: TextStyle(
                              fontFamily: 'Recoleta',
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 13),
                              fontWeight: FontWeight.w600,
                              color: selectedVoyageButton == 'encours'
                                  ? Colors.white
                                  : Color(0xff403C3C),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 75),
                    height: AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 25),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedVoyageButton = 'termine';
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedVoyageButton == 'termine'
                              ? Color(0xff519442)
                              : Color(0xffFCFAF5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border:
                              Border.all(color: Color(0xff707070), width: 0.1),
                        ),
                        child: Center(
                          child: Text(
                            'Terminé',
                            style: TextStyle(
                              fontFamily: 'Recoleta',
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 13),
                              fontWeight: FontWeight.w600,
                              color: selectedVoyageButton == 'termine'
                                  ? Colors.white
                                  : Color(0xff403C3C),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 10),
            ),
            voyagesBottomWidget(),
          ],
        ),
      ),
    );
  }

  navigatePrepaerPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PreparerVoyagePage(
                  user: widget.user,
                )));
  }
}
