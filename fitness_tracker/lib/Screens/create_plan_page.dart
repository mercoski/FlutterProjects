import 'package:fitness_tracker/Models/move_data.dart';
import 'package:fitness_tracker/Models/selected_muscle.dart';
import 'package:fitness_tracker/Utils/AdaptiveScreenSize.dart';
import 'package:fitness_tracker/Utils/AdaptiveTextSize.dart';
import 'package:fitness_tracker/Utils/sharedPref.dart';
import 'package:fitness_tracker/Widgets/create_plan_page_widgets/dayactionswidget.dart';
import 'package:fitness_tracker/Widgets/createplandaywidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreatePlanPage extends StatelessWidget {
  const CreatePlanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
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
              //Monday
              const CreatePlanDayWidget(day: 'Monday'),
              //Monday Activities
              DayActionsWidget(
                activity_list: Provider.of<sharedPrefs>(context, listen: false)
                    .getSavedWeightsFromSharedPref('monday_activities'),
                day: 'Monday',
              ),
              //Boşluk 20 birim
              Container(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 20),
              ),
              //Tuesday
              const CreatePlanDayWidget(day: 'Tuesday'),
              //Tuesday Activities
              DayActionsWidget(
                  activity_list:
                      Provider.of<sharedPrefs>(context, listen: false)
                          .getSavedWeightsFromSharedPref('tuesday_activities'),
                  day: 'Tuesday'), //Boşluk 20 birim
              Container(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 20),
              ),
              //Wednesday
              const CreatePlanDayWidget(day: 'Wednesday'),
              //Wednesday Activities
              DayActionsWidget(
                  activity_list: Provider.of<sharedPrefs>(context,
                          listen: false)
                      .getSavedWeightsFromSharedPref('wednesday_activities'),
                  day: 'Wednesday'), //Boşluk 20 birim
              Container(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 20),
              ),
              //Thursday
              const CreatePlanDayWidget(day: 'Thursday'),
              //Thursday Activities
              DayActionsWidget(
                  activity_list:
                      Provider.of<sharedPrefs>(context, listen: false)
                          .getSavedWeightsFromSharedPref('thursday_activities'),
                  day: 'Thursday'), //Boşluk 20 birim
              Container(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 20),
              ),
              //Friday
              const CreatePlanDayWidget(day: 'Friday'),
              //Friday Activities
              DayActionsWidget(
                  activity_list:
                      Provider.of<sharedPrefs>(context, listen: false)
                          .getSavedWeightsFromSharedPref('friday_activities'),
                  day: 'Friday'), //Boşluk 20 birim
              Container(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 20),
              ),
              //Saturday
              const CreatePlanDayWidget(day: 'Saturday'),
              //Saturday Activities
              DayActionsWidget(
                  activity_list:
                      Provider.of<sharedPrefs>(context, listen: false)
                          .getSavedWeightsFromSharedPref('saturday_activities'),
                  day: 'Saturday'), //Boşluk 20 birim
              Container(
                height: const AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 20),
              ),
              //Sunday
              const CreatePlanDayWidget(day: 'Sunday'),
              //Sunday Activities
              DayActionsWidget(
                  activity_list:
                      Provider.of<sharedPrefs>(context, listen: false)
                          .getSavedWeightsFromSharedPref('sunday_activities'),
                  day: 'Sunday'),
            ],
          ),
        ),
      ),
    );
  }
}
