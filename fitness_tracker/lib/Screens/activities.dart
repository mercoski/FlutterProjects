import 'package:fitness_tracker/Utils/AdaptiveScreenSize.dart';
import 'package:fitness_tracker/Utils/AdaptiveTextSize.dart';
import 'package:fitness_tracker/Utils/sharedPref.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Activities extends StatefulWidget {
  Activities({Key? key, required this.activity_list}) : super(key: key);
  String activity_list;

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AdaptiveScreenSize().getadaptiveScreenSizeHeight(
          context,
          Provider.of<sharedPrefs>(context, listen: false)
                  .getSavedListLenght(widget.activity_list) *
              50),
      width: AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 300),
      child: ListView.builder(
        itemCount: Provider.of<sharedPrefs>(context, listen: false)
            .getSavedListLenght(widget.activity_list),
        itemBuilder: (context, index) => Container(
          height: const AdaptiveScreenSize()
              .getadaptiveScreenSizeHeight(context, 50),
          width: const AdaptiveScreenSize()
              .getadaptiveScreenSizeWidth(context, 200),
          child: Card(
            color: Theme.of(context).scaffoldBackgroundColor,
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                Provider.of<sharedPrefs>(context, listen: false)
                    .getSavedWeightsFromSharedPref(widget.activity_list)[index],
                style: TextStyle(
                  fontFamily: 'Recoleta',
                  fontSize:
                      const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
