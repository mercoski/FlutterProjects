import 'package:fitness_tracker/Screens/create_plan_page.dart';
import 'package:fitness_tracker/Screens/program.dart';
import 'package:fitness_tracker/Screens/stats_page.dart';
import 'package:fitness_tracker/Utils/AdaptiveScreenSize.dart';
import 'package:fitness_tracker/Utils/AdaptiveTextSize.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fitness Tracker'),
      ),
      body: Center(
        child: Column(
          children: [
            //Boşluk
            const Spacer(),
            //Todays Workout
            GestureDetector(
              onTapDown: (details) {
                print('asdjkakd');
              },
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProgramPage()));
              },
              child: SizedBox(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 100),
                width: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeWidth(context, 300),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    'Todays Workout',
                    style: TextStyle(
                      fontFamily: 'Recoleta',
                      fontSize: const AdaptiveTextSize()
                          .getadaptiveTextSize(context, 30),
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  )),
                ),
              ),
            ),
            //Boşluk
            const Spacer(),
            //Create Plan
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreatePlanPage()));
              },
              child: SizedBox(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 100),
                width: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeWidth(context, 300),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    'Create New Plan',
                    style: TextStyle(
                      fontFamily: 'Recoleta',
                      fontSize: const AdaptiveTextSize()
                          .getadaptiveTextSize(context, 30),
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  )),
                ),
              ),
            ),
            //Boşluk
            const Spacer(),
            //Statistics
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StatsPage()));
              },
              child: SizedBox(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 100),
                width: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeWidth(context, 300),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    'Statistics',
                    style: TextStyle(
                      fontFamily: 'Recoleta',
                      fontSize: const AdaptiveTextSize()
                          .getadaptiveTextSize(context, 30),
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  )),
                ),
              ),
            ),
            //Boşluk
            const Spacer(),
            //Current Stats
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 100),
                width: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeWidth(context, 300),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    'Current Status',
                    style: TextStyle(
                      fontFamily: 'Recoleta',
                      fontSize: const AdaptiveTextSize()
                          .getadaptiveTextSize(context, 30),
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  )),
                ),
              ),
            ),
            //Boşluk
            const Spacer(),
            //Calorie Take
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 100),
                width: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeWidth(context, 300),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    'Calorie Take',
                    style: TextStyle(
                      fontFamily: 'Recoleta',
                      fontSize: const AdaptiveTextSize()
                          .getadaptiveTextSize(context, 30),
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  )),
                ),
              ),
            ),
            //Boşluk
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
