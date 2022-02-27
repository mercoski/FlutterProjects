import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/bottomnav.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:travel_app/widgets/buttomnavbar.dart';
import 'package:travel_app/widgets/mapbottomcomingscreen.dart';

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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
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
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            backgroundColor: Colors.white,
                            isScrollControlled: true,
                            isDismissible: false,
                            context: context,
                            builder: (builder) {
                              return MapBottomComingScreen();
                            },
                          );
                        },
                        child: Card(
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
                            child: Icon(
                              Icons.settings_outlined,
                            ),
                          ),
                        ),
                      ),
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
