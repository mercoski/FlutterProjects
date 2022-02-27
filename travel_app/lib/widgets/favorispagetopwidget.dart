import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/models/data.dart';
import 'package:travel_app/pages/map.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:travel_app/widgets/favorisitinatesbottomwidget.dart';
import 'package:travel_app/widgets/homepagebuttons.dart';

class FavorisPageTopWidget extends StatefulWidget {
  FavorisPageTopWidget({Key? key, required this.selected, required this.user})
      : super(key: key);

  String selected;
  UserClass? user;
  //List<String> selected_service = [];
  @override
  State<FavorisPageTopWidget> createState() => _FavorisPageTopWidgetState();
}

class _FavorisPageTopWidgetState extends State<FavorisPageTopWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: AdaptiveScreenSize()
                      .getadaptiveScreenSizeWidth(context, 335),
                  height: AdaptiveScreenSize()
                      .getadaptiveScreenSizeHeight(context, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {
                            widget.selected = 'Itinéraires';
                            setState(() {});
                            print('init');
                          },
                          child: HomePageButtons(
                            buttontext: 'Itinéraires',
                            isselected:
                                widget.selected == 'Itinéraires' ? true : false,
                          )),
                      GestureDetector(
                          onTap: () {
                            widget.selected = 'Spots';
                            setState(() {});
                            print('spots');
                          },
                          child: HomePageButtons(
                            buttontext: 'Spots',
                            isselected:
                                widget.selected == 'Spots' ? true : false,
                          )),
                    ],
                  )),
              SizedBox(
                width: AdaptiveScreenSize()
                    .getadaptiveScreenSizeWidth(context, 335),
                height: AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 2),
                child: Row(
                  children: [
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 165),
                      height: widget.selected == 'Itinéraires'
                          ? AdaptiveScreenSize()
                              .getadaptiveScreenSizeHeight(context, 2)
                          : AdaptiveScreenSize()
                              .getadaptiveScreenSizeHeight(context, 1),
                      color: widget.selected == 'Itinéraires'
                          ? Color(0xff296592)
                          : Color(0xff7D7D7D),
                    ),
                    Container(
                      width: AdaptiveScreenSize()
                          .getadaptiveScreenSizeWidth(context, 165),
                      height: widget.selected == 'Spots'
                          ? AdaptiveScreenSize()
                              .getadaptiveScreenSizeHeight(context, 2)
                          : AdaptiveScreenSize()
                              .getadaptiveScreenSizeHeight(context, 1),
                      color: widget.selected == 'Spots'
                          ? Color(0xff296592)
                          : Color(0xff7D7D7D),
                    ),
                  ],
                ),
              ),
              widget.selected == 'Itinéraires'
                  ? FavorisItinaresBottom()
                  : Container(
                      height: AdaptiveScreenSize()
                          .getadaptiveScreenSizeHeight(context, 620))
            ],
          ),
        ),
      ],
    );
  }
}
