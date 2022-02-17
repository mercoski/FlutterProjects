import 'package:fitness_tracker/Models/move_data.dart';
import 'package:fitness_tracker/Utils/AdaptiveScreenSize.dart';
import 'package:fitness_tracker/Utils/AdaptiveTextSize.dart';
import 'package:fitness_tracker/Utils/sharedPref.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActivitySelectionPage extends StatefulWidget {
  ActivitySelectionPage(
      {Key? key, required this.activity_list, required this.body_part})
      : super(key: key);

  List<String> activity_list;
  String body_part;

  @override
  State<ActivitySelectionPage> createState() => _ActivitySelectionPageState();
}

class _ActivitySelectionPageState extends State<ActivitySelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fitness Tracker'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 20),
            ),
            SizedBox(
              height: AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 100),
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
                      'Select ${widget.body_part} Exercises',
                      style: TextStyle(
                        fontFamily: 'Recoleta',
                        fontSize: const AdaptiveTextSize()
                            .getadaptiveTextSize(context, 20),
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 20),
            ),
            SizedBox(
              height: AdaptiveScreenSize()
                  .getadaptiveScreenSizeHeight(context, 500),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: const AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 500),
                    child: ListView.builder(
                      itemCount: widget.activity_list.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          //Chest
                          setState(() {
                            (widget.body_part == 'Chest' &&
                                    !selected_chest_activities
                                        .contains(widget.activity_list[index]))
                                ? selected_chest_activities
                                    .add(widget.activity_list[index])
                                : (widget.body_part == 'Chest' &&
                                        selected_chest_activities.contains(
                                            widget.activity_list[index]))
                                    ? selected_chest_activities
                                        .remove(widget.activity_list[index])
                                    : (widget.body_part == 'Shoulders' &&
                                            !selected_shoulder_activities.contains(
                                                widget.activity_list[index]))
                                        ? selected_shoulder_activities
                                            .add(widget.activity_list[index])
                                        : (widget.body_part == 'Shoulders' &&
                                                selected_shoulder_activities
                                                    .contains(widget
                                                        .activity_list[index]))
                                            ? selected_shoulder_activities
                                                .remove(
                                                    widget.activity_list[index])
                                            : (widget.body_part == 'Biceps' &&
                                                    !selected_biceps_activities
                                                        .contains(widget.activity_list[index]))
                                                ? selected_biceps_activities.add(widget.activity_list[index])
                                                : (widget.body_part == 'Biceps' && selected_biceps_activities.contains(widget.activity_list[index]))
                                                    ? selected_biceps_activities.remove(widget.activity_list[index])
                                                    : (widget.body_part == 'Triceps' && !selected_triceps_activities.contains(widget.activity_list[index]))
                                                        ? selected_triceps_activities.add(widget.activity_list[index])
                                                        : (widget.body_part == 'Triceps' && selected_triceps_activities.contains(widget.activity_list[index]))
                                                            ? selected_triceps_activities.remove(widget.activity_list[index])
                                                            : (widget.body_part == 'Abs' && !selected_abs_activities.contains(widget.activity_list[index]))
                                                                ? selected_abs_activities.add(widget.activity_list[index])
                                                                : (widget.body_part == 'Abs' && selected_abs_activities.contains(widget.activity_list[index]))
                                                                    ? selected_abs_activities.remove(widget.activity_list[index])
                                                                    : (widget.body_part == 'Back' && !selected_back_activities.contains(widget.activity_list[index]))
                                                                        ? selected_back_activities.add(widget.activity_list[index])
                                                                        : (widget.body_part == 'Back' && selected_back_activities.contains(widget.activity_list[index]))
                                                                            ? selected_back_activities.remove(widget.activity_list[index])
                                                                            : (widget.body_part == 'Calfs' && !selected_calfs_activities.contains(widget.activity_list[index]))
                                                                                ? selected_calfs_activities.add(widget.activity_list[index])
                                                                                : (widget.body_part == 'Calfs' && selected_calfs_activities.contains(widget.activity_list[index]))
                                                                                    ? selected_calfs_activities.remove(widget.activity_list[index])
                                                                                    : (widget.body_part == 'Upper Legs' && !selected_upper_legs_activities.contains(widget.activity_list[index]))
                                                                                        ? selected_upper_legs_activities.add(widget.activity_list[index])
                                                                                        : (widget.body_part == 'Upper Legs' && selected_upper_legs_activities.contains(widget.activity_list[index]))
                                                                                            ? selected_upper_legs_activities.remove(widget.activity_list[index])
                                                                                            : (widget.body_part == 'Cardio' && !selected_cardio_activities.contains(widget.activity_list[index]))
                                                                                                ? selected_cardio_activities.add(widget.activity_list[index])
                                                                                                : (widget.body_part == 'Cardio' && selected_cardio_activities.contains(widget.activity_list[index]))
                                                                                                    ? selected_cardio_activities.remove(widget.activity_list[index])
                                                                                                    : null;
                            print(selected_chest_activities);
                          });
                        },
                        child: SizedBox(
                          height: const AdaptiveScreenSize()
                              .getadaptiveScreenSizeHeight(context, 100),
                          width: const AdaptiveScreenSize()
                              .getadaptiveScreenSizeWidth(context, 300),
                          child: Card(
                            color: (selected_abs_activities.contains(
                                        widget.activity_list[index]) ||
                                    selected_back_activities.contains(
                                        widget.activity_list[index]) ||
                                    selected_biceps_activities.contains(
                                        widget.activity_list[index]) ||
                                    selected_biceps_activities.contains(
                                        widget.activity_list[index]) ||
                                    selected_calfs_activities.contains(
                                        widget.activity_list[index]) ||
                                    selected_cardio_activities.contains(
                                        widget.activity_list[index]) ||
                                    selected_chest_activities.contains(
                                        widget.activity_list[index]) ||
                                    selected_shoulder_activities.contains(
                                        widget.activity_list[index]) ||
                                    selected_triceps_activities.contains(
                                        widget.activity_list[index]) ||
                                    selected_upper_legs_activities
                                        .contains(widget.activity_list[index]))
                                ? Colors.green
                                : Theme.of(context).primaryColor,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                widget.activity_list[index],
                                style: TextStyle(
                                  fontFamily: 'Recoleta',
                                  fontSize: const AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 20),
                                  fontWeight: FontWeight.w600,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
