import 'package:fitness_tracker/Models/move_data.dart';
import 'package:fitness_tracker/Models/selected_page.dart';
import 'package:fitness_tracker/Utils/AdaptiveScreenSize.dart';
import 'package:fitness_tracker/Utils/AdaptiveTextSize.dart';
import 'package:fitness_tracker/Utils/sharedPref.dart';
import 'package:fitness_tracker/Widgets/category_cards.dart';
import 'package:fitness_tracker/Widgets/moves/moves.dart';
import 'package:fitness_tracker/Widgets/moves/time_series_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({Key? key}) : super(key: key);

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fitness Tracker'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Boşluk 20 birim
              Container(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 20),
              ),
              //Kategori Seçimi Chest-Shoulder-Biceps-Triceps-Abs-Back-Calfs-Upper Legs
              SizedBox(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 250),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Provider.of<SelectedPage>(context, listen: false)
                              .setSelected('Chest');
                        });
                      },
                      child: CategoryCards(
                        image: 'assets/chest.jpg',
                        title: 'Chest',
                      ),
                    ),
                    Container(
                      width: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Provider.of<SelectedPage>(context, listen: false)
                              .setSelected('Shoulders');
                        });
                      },
                      child: CategoryCards(
                        image: 'assets/shoulder.jpg',
                        title: 'Shoulders',
                      ),
                    ),
                    Container(
                      width: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Provider.of<SelectedPage>(context, listen: false)
                              .setSelected('Biceps');
                        });
                      },
                      child: CategoryCards(
                        image: 'assets/biceps.jpg',
                        title: 'Biceps',
                      ),
                    ),
                    Container(
                      width: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Provider.of<SelectedPage>(context, listen: false)
                              .setSelected('Triceps');
                        });
                      },
                      child: CategoryCards(
                        image: 'assets/triceps.jpg',
                        title: 'Triceps',
                      ),
                    ),
                    Container(
                      width: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Provider.of<SelectedPage>(context, listen: false)
                              .setSelected('Abs');
                        });
                      },
                      child: CategoryCards(
                        image: 'assets/abs.jpeg',
                        title: 'Abs',
                      ),
                    ),
                    Container(
                      width: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Provider.of<SelectedPage>(context, listen: false)
                              .setSelected('Back');
                        });
                      },
                      child: CategoryCards(
                        image: 'assets/back.jpg',
                        title: 'Back',
                      ),
                    ),
                    Container(
                      width: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Provider.of<SelectedPage>(context, listen: false)
                              .setSelected('Calfs');
                        });
                      },
                      child: CategoryCards(
                        image: 'assets/calfs.jpg',
                        title: 'Calfs',
                      ),
                    ),
                    Container(
                      width: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Provider.of<SelectedPage>(context, listen: false)
                              .setSelected('Upper Legs');
                        });
                      },
                      child: CategoryCards(
                        image: 'assets/quadriceps.jpg',
                        title: 'Upper Legs',
                      ),
                    ),
                    Container(
                      width: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 20),
                    ),
                    Container(
                      width: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Provider.of<SelectedPage>(context, listen: false)
                              .setSelected('Cardio');
                        });
                      },
                      child: CategoryCards(
                        image: 'assets/cardio.jpg',
                        title: 'Cardio',
                      ),
                    ),
                  ],
                ),
              ),
              //Boşluk 20 birim
              Container(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 20),
              ),
              //My Program
              Container(
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
                      '${Provider.of<SelectedPage>(context).selectedPage} History',
                      style: TextStyle(
                        fontFamily: 'Recoleta',
                        fontSize: const AdaptiveTextSize()
                            .getadaptiveTextSize(context, 18),
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                  ),
                ),
              ),
              //Boşluk 20 birim
              Container(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 20),
              ),
              //Hareketler
              Container(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 300),
                width: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeWidth(context, 300),
                child: MovesView(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Temizlemek için çalıştır

          setState(() {
            back_data.clear();
            upper_legs_data.clear();
            calfs_data.clear();
            abs_data.clear();
            triceps_data.clear();
            shoulder_data.clear();
            chest_data.clear();
            biceps_data.clear();
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('chest_dates');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('chest_weights');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('shoulders_dates');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('shoulders_weights');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('biceps_dates');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('biceps_weights');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('triceps_dates');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('triceps_weights');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('abs_dates');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('abs_weights');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('back_dates');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('back_weights');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('calfs_dates');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('calfs_weights');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('upper_legs_dates');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('upper_legs_weights');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('cardio_dates');
            Provider.of<sharedPrefs>(context, listen: false)
                .clearlist('cardio_times');
          });
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.sports),
      ),
    );
  }
}
