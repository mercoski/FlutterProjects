import 'package:flutter/material.dart';

class NearCities extends StatefulWidget {
  final String city;
  final String distance;
  final int itemCount;

  const NearCities(
      {required this.city, required this.distance, required this.itemCount});

  @override
  State<NearCities> createState() => _NearCitiesState();
}

class _NearCitiesState extends State<NearCities> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 1,
      child: SizedBox(
        height: MediaQuery.of(context).size.height / widget.itemCount,
        width: MediaQuery.of(context).size.width * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text(
                widget.city,
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
              subtitle: Text(
                widget.distance,
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                    // ignore: prefer_const_literals_to_create_immutables
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
