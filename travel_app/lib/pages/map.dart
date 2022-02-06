import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:travel_app/widgets/buttomnavbar.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key, required this.user}) : super(key: key);
  final UserClass? user;

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  bool legend_selected = false;
  bool satallite_selected = false;
  bool settings_selected = false;
  bool pin_selected = false;

  @override
  Widget build(BuildContext context) {
    const initialCameraPosition =
        CameraPosition(target: LatLng(41.015137, 28.979530), zoom: 11);

    GoogleMapController? googleMapController;
    Marker event1 = Marker(
        markerId: const MarkerId('Event-1'),
        infoWindow: const InfoWindow(
          title: 'Event-1',
          snippet: 'İstanbul',
        ),
        visible: true,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        position: LatLng(41.065137, 28.989530));

    return ChangeNotifierProvider(
      create: (context) => BottomNav(),
      child: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              mapType: satallite_selected ? MapType.satellite : MapType.terrain,
              indoorViewEnabled: false,
              compassEnabled: false,
              zoomControlsEnabled: false,
              mapToolbarEnabled: false,
              myLocationButtonEnabled: false,
              initialCameraPosition: initialCameraPosition,
              onMapCreated: (controller) => googleMapController = controller,
              markers: {event1},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 172),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      (legend_selected == true && pin_selected == false)
                          ? Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: SizedBox(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 234),
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 148),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/legend.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            )
                          : (legend_selected == true && pin_selected == true)
                              ? Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: SizedBox(
                                    height: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeHeight(
                                            context, 355),
                                    width: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeWidth(
                                            context, 172),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/legendspot.png',
                                      ),
                                    ),
                                  ),
                                )
                              : Container(),
                      Container(
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 10),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            legend_selected = !legend_selected;
                          });
                        },
                        child: Card(
                          color: legend_selected
                              ? Color(0xff413C3C)
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          elevation: 0,
                          child: SizedBox(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 38),
                            width: AdaptiveScreenSize()
                                .getadaptiveScreenSizeWidth(context, 100),
                            child: Center(
                                child: Text(
                              'Légende',
                              style: TextStyle(
                                  fontFamily: 'Recoleta',
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 18),
                                  fontWeight: FontWeight.w300,
                                  color: legend_selected
                                      ? Colors.white
                                      : Color(0xff413C3C)),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 180),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 50),
                      ),
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        elevation: 0,
                        child: Container(
                          height: AdaptiveScreenSize()
                              .getadaptiveScreenSizeHeight(context, 50),
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 50),
                          child: Icon(Icons.search),
                        ),
                      ),
                      Container(
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 12),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            settings_selected = !settings_selected;
                          });
                        },
                        child: Card(
                          color: settings_selected
                              ? Color(0xff674B3F)
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          elevation: 0,
                          child: Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 50),
                            width: AdaptiveScreenSize()
                                .getadaptiveScreenSizeWidth(context, 50),
                            child: Icon(
                              Icons.settings_outlined,
                              color: settings_selected ? Colors.white : null,
                            ),
                          ),
                        ),
                      ),
                      settings_selected
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: AdaptiveScreenSize()
                                      .getadaptiveScreenSizeHeight(context, 12),
                                ),
                                Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  elevation: 0,
                                  child: Container(
                                    height: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeHeight(
                                            context, 36),
                                    width: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeWidth(
                                            context, 153),
                                    child: Center(
                                        child: Text(
                                      'En pleine nature',
                                      style: TextStyle(
                                          fontFamily: 'Recoleta',
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 14),
                                          fontWeight: FontWeight.normal,
                                          color: settings_selected
                                              ? Color(0xff413C3C)
                                              : Colors.white),
                                    )),
                                  ),
                                ),
                                Container(
                                  height: AdaptiveScreenSize()
                                      .getadaptiveScreenSizeHeight(context, 12),
                                ),
                                Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  elevation: 0,
                                  child: Container(
                                    height: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeHeight(
                                            context, 36),
                                    width: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeWidth(
                                            context, 180),
                                    child: Center(
                                        child: Text(
                                      'Aire de camping-car',
                                      style: TextStyle(
                                          fontFamily: 'Recoleta',
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 14),
                                          fontWeight: FontWeight.normal,
                                          color: settings_selected
                                              ? Color(0xff413C3C)
                                              : Colors.white),
                                    )),
                                  ),
                                ),
                                Container(
                                  height: AdaptiveScreenSize()
                                      .getadaptiveScreenSizeHeight(context, 12),
                                ),
                                Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  elevation: 0,
                                  child: Container(
                                    height: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeHeight(
                                            context, 36),
                                    width: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeWidth(
                                            context, 108),
                                    child: Center(
                                        child: Text(
                                      'Camping',
                                      style: TextStyle(
                                          fontFamily: 'Recoleta',
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 14),
                                          fontWeight: FontWeight.normal,
                                          color: settings_selected
                                              ? Color(0xff413C3C)
                                              : Colors.white),
                                    )),
                                  ),
                                ),
                              ],
                            )
                          : Spacer(),
                      Spacer(),
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        elevation: 0,
                        child: Container(
                          height: AdaptiveScreenSize()
                              .getadaptiveScreenSizeHeight(context, 50),
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 50),
                          child: Icon(Icons.compass_calibration_sharp),
                        ),
                      ),
                      Container(
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 12),
                      ),
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        elevation: 0,
                        child: Container(
                          height: AdaptiveScreenSize()
                              .getadaptiveScreenSizeHeight(context, 50),
                          width: AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 50),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/locationdart.png'),
                          ),
                        ),
                      ),
                      Container(
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 12),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            satallite_selected = !satallite_selected;
                          });
                        },
                        child: Card(
                          color: satallite_selected
                              ? Color(0xffF2EAD9)
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          elevation: 0,
                          child: Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 50),
                            width: AdaptiveScreenSize()
                                .getadaptiveScreenSizeWidth(context, 50),
                            child: Icon(Icons.compass_calibration_sharp),
                          ),
                        ),
                      ),
                      Container(
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 12),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            pin_selected = !pin_selected;
                          });
                        },
                        child: Card(
                          color:
                              pin_selected ? Color(0xff3C575E) : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          elevation: 0,
                          child: SizedBox(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 50),
                            width: AdaptiveScreenSize()
                                .getadaptiveScreenSizeWidth(context, 50),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: pin_selected
                                  ? Icon(Icons.settings)
                                  : Image.asset(
                                      'assets/pin.png',
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(
          index: 1,
          user: widget.user,
        ),
      ),
    );
  }
}
