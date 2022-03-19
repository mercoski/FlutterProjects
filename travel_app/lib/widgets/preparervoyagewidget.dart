import 'package:flutter/material.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';

class preparervoyagewidget extends StatelessWidget {
  Function onTap;
  String text;
  preparervoyagewidget({Key? key, required this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 335),
      height: AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 50),
      decoration: BoxDecoration(
        color: Color(0xff413C3C),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: const Color(0xff413C3C)),
      ),
      child: Row(
        children: [
          Container(
              width:
                  AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 20)),
          Text(
            text,
            style: TextStyle(
                fontFamily: 'Recoleta',
                fontSize:
                    const AdaptiveTextSize().getadaptiveTextSize(context, 15),
                fontWeight: FontWeight.w600,
                color: Colors.white),
            textAlign: TextAlign.left,
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                onTap;
              },
              iconSize: 25,
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              )),
          Container(
              width:
                  AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 20)),
        ],
      ),
    );
  }
}
