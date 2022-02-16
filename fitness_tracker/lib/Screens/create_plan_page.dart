import 'package:fitness_tracker/Models/move_data.dart';
import 'package:fitness_tracker/Models/selected_muscle.dart';
import 'package:fitness_tracker/Screens/home_page.dart';
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
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Fitness Tracker'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
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
                      activity_list: monday_activities,
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
                        activity_list: tuesday_activities,
                        day: 'Tuesday'), //Boşluk 20 birim
                    Container(
                      height: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),
                    //Wednesday
                    const CreatePlanDayWidget(day: 'Wednesday'),
                    //Wednesday Activities
                    DayActionsWidget(
                        activity_list: wednesday_activities,
                        day: 'Wednesday'), //Boşluk 20 birim
                    Container(
                      height: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),
                    //Thursday
                    const CreatePlanDayWidget(day: 'Thursday'),
                    //Thursday Activities
                    DayActionsWidget(
                        activity_list: thursday_activities,
                        day: 'Thursday'), //Boşluk 20 birim
                    Container(
                      height: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),
                    //Friday
                    const CreatePlanDayWidget(day: 'Friday'),
                    //Friday Activities
                    DayActionsWidget(
                        activity_list: friday_activities,
                        day: 'Friday'), //Boşluk 20 birim
                    Container(
                      height: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),
                    //Saturday
                    const CreatePlanDayWidget(day: 'Saturday'),
                    //Saturday Activities
                    DayActionsWidget(
                        activity_list: saturday_activities,
                        day: 'Saturday'), //Boşluk 20 birim
                    Container(
                      height: const AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 20),
                    ),
                    //Sunday
                    const CreatePlanDayWidget(day: 'Sunday'),
                    //Sunday Activities
                    DayActionsWidget(
                        activity_list: sunday_activities, day: 'Sunday'),
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 50),
            child: Row(
              children: [
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 20),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 20),
                          ),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        'Dismiss',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 15),
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor,
                        ),
                      )),
                    ),
                  ),
                ),
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 20),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Provider.of<sharedPrefs>(context, listen: false)
                          .saveWeightsToSharedPref(
                              'monday_activities', monday_activities);
                      Provider.of<sharedPrefs>(context, listen: false)
                          .saveWeightsToSharedPref(
                              'tuesday_activities', tuesday_activities);
                      Provider.of<sharedPrefs>(context, listen: false)
                          .saveWeightsToSharedPref(
                              'wednesday_activities', wednesday_activities);
                      Provider.of<sharedPrefs>(context, listen: false)
                          .saveWeightsToSharedPref(
                              'thursday_activities', thursday_activities);
                      Provider.of<sharedPrefs>(context, listen: false)
                          .saveWeightsToSharedPref(
                              'friday_activities', friday_activities);
                      Provider.of<sharedPrefs>(context, listen: false)
                          .saveWeightsToSharedPref(
                              'saturday_activities', saturday_activities);
                      Provider.of<sharedPrefs>(context, listen: false)
                          .saveWeightsToSharedPref(
                              'sunday_activities', sunday_activities);
                      monday_activities.clear();
                      tuesday_activities.clear();
                      wednesday_activities.clear();
                      thursday_activities.clear();
                      friday_activities.clear();
                      saturday_activities.clear();
                      sunday_activities.clear();
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 20),
                          ),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        'Create Plan',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 15),
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor,
                        ),
                      )),
                    ),
                  ),
                ),
                Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 20),
                ),
              ],
            ),
          ),
          Container(
            height:
                AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 20),
          )
        ],
      ),
    );
  }
}
