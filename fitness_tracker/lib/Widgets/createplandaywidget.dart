import 'package:fitness_tracker/Utils/AdaptiveScreenSize.dart';
import 'package:fitness_tracker/Utils/AdaptiveTextSize.dart';
import 'package:flutter/material.dart';

class CreatePlanDayWidget extends StatelessWidget {
  const CreatePlanDayWidget({
    Key? key,
    required this.day,
  }) : super(key: key);

  final String day;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          const AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 50),
      width:
          const AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 300),
      child: Card(
        color: Theme.of(context).primaryColor,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            day,
            style: TextStyle(
              fontFamily: 'Recoleta',
              fontSize:
                  const AdaptiveTextSize().getadaptiveTextSize(context, 20),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
