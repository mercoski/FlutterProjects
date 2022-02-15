import 'package:fitness_tracker/Models/move_data.dart';
import 'package:fitness_tracker/Utils/AdaptiveScreenSize.dart';
import 'package:fitness_tracker/Utils/AdaptiveTextSize.dart';
import 'package:flutter/material.dart';

class CategoryCards extends StatelessWidget {
  CategoryCards({Key? key, required this.image, required this.title})
      : super(key: key);

  String image;
  String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:
          const AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 200),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                ),
                child: Center(
                  child: Text(
                    title,
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
            )
          ],
        ),
      ),
    );
  }
}
