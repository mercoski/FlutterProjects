import 'package:flutter/material.dart';
import 'package:travel_app/models/data.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';

class FavoriteButton extends StatefulWidget {
  FavoriteButton({Key? key, required this.eventId}) : super(key: key);
  String eventId;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.eventId.toString() == '1'
              ? favorite_button1_clicked = !favorite_button1_clicked
              : widget.eventId.toString() == '2'
                  ? favorite_button2_clicked = !favorite_button2_clicked
                  : null;

          print(favorite_button2_clicked);
        });
      },
      child: Container(
        height: AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 34),
        width: AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 34),
        child: Card(
          color: Color(0xffFCFAF5).withOpacity(0.5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: favorite_button1_clicked == true ||
                  favorite_button2_clicked == true
              ? const Icon(
                  Icons.favorite,
                  color: Color(0xffF16633),
                  size: 17,
                )
              : const Icon(
                  Icons.favorite_border,
                  color: Color(0xff413C3C),
                  size: 17,
                ),
        ),
      ),
    );
  }
}
