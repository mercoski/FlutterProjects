import 'package:fitness_tracker/Models/move_data.dart';
import 'package:fitness_tracker/Models/selected_muscle.dart';
import 'package:fitness_tracker/Screens/activity_selection_page.dart';
import 'package:fitness_tracker/Screens/muscle_selection_page.dart';

import 'package:fitness_tracker/Utils/AdaptiveScreenSize.dart';
import 'package:fitness_tracker/Utils/AdaptiveTextSize.dart';
import 'package:fitness_tracker/Utils/sharedPref.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DayActionsWidget extends StatefulWidget {
  List<String> activity_list;
  String day;

  DayActionsWidget({required this.activity_list, required this.day});

  @override
  State<DayActionsWidget> createState() => _DayActionsWidgetState();
}

class _DayActionsWidgetState extends State<DayActionsWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:
          const AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 300),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: widget.activity_list.isEmpty ||
                    widget.activity_list[0] == 'Rest Day'
                ? Container(
                    child: Center(
                        child: IconButton(
                      icon: Icon(
                        Icons.add,
                        size: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 30),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        muscleSelectionPage(context,
                            title_text: 'Select the Muscle Group',
                            activity_list: widget.activity_list,
                            day: widget.day);
                      },
                    )),
                  )
                : Row(
                    children: [
                      Container(
                        height: const AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(
                                context, (50 * widget.activity_list.length)),
                        width: const AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 150),
                        child: ListView.builder(
                          itemCount: widget.activity_list.length,
                          itemBuilder: (context, index) {
                            return Dismissible(
                              direction: DismissDirection.endToStart,
                              key: Key(widget.activity_list[index]),
                              onDismissed: (direction) {
                                setState(() {
                                  if (widget.activity_list.length == 1) {
                                    widget.activity_list.clear();
                                    widget.activity_list.add('Rest Day');
                                  } else {
                                    widget.activity_list.removeAt(index);
                                  }
                                });
                                print(index);
                              },
                              background: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Icon(Icons.delete, color: Colors.white),
                              ),
                              child: widget.activity_list[0] == 'Rest Day'
                                  ? Container()
                                  : GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (context) =>
                                                        ActivitySelectionPage(
                                                          activity_list: widget
                                                                          .activity_list[
                                                                      index] ==
                                                                  'Chest'
                                                              ? chest_activities
                                                              : widget.activity_list[
                                                                          index] ==
                                                                      'Shoulders'
                                                                  ? shoulder_activities
                                                                  : widget.activity_list[
                                                                              index] ==
                                                                          'Biceps'
                                                                      ? biceps_activities
                                                                      : widget.activity_list[index] ==
                                                                              'Triceps'
                                                                          ? triceps_activities
                                                                          : widget.activity_list[index] == 'Abs'
                                                                              ? abs_activities
                                                                              : widget.activity_list[index] == 'Back'
                                                                                  ? back_activities
                                                                                  : widget.activity_list[index] == 'Back'
                                                                                      ? back_activities
                                                                                      : widget.activity_list[index] == 'Calfs'
                                                                                          ? calfs_activities
                                                                                          : widget.activity_list[index] == 'Upper Legs'
                                                                                              ? upper_legs_activities
                                                                                              : widget.activity_list[index] == 'Cardio'
                                                                                                  ? cardio_activities
                                                                                                  : [],
                                                          body_part: widget
                                                                  .activity_list[
                                                              index],
                                                        )));
                                      },
                                      child: Container(
                                        height: const AdaptiveScreenSize()
                                            .getadaptiveScreenSizeHeight(
                                                context, 50),
                                        width: const AdaptiveScreenSize()
                                            .getadaptiveScreenSizeWidth(
                                                context, 150),
                                        child: Card(
                                          color: Theme.of(context).primaryColor,
                                          elevation: 5,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Center(
                                            child: Text(
                                              widget.activity_list[index],
                                              style: TextStyle(
                                                fontFamily: 'Recoleta',
                                                fontSize:
                                                    const AdaptiveTextSize()
                                                        .getadaptiveTextSize(
                                                            context, 15),
                                                fontWeight: FontWeight.w600,
                                                color: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                            );
                          },
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          size: AdaptiveScreenSize()
                              .getadaptiveScreenSizeHeight(context, 30),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          muscleSelectionPage(context,
                              title_text: 'Select the Muscle Group',
                              activity_list: widget.activity_list,
                              day: widget.day);
                        },
                      ),
                      Spacer()
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
