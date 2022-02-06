import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utils/adaptivescreensize.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:travel_app/widgets/homepagebuttons.dart';

class HomePageTopWidget extends StatefulWidget {
  HomePageTopWidget({Key? key, required this.selected}) : super(key: key);

  String selected;
  List<String> selected_service = [];
  @override
  State<HomePageTopWidget> createState() => _HomePageTopWidgetState();
}

class _HomePageTopWidgetState extends State<HomePageTopWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffFCFAF5),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: AdaptiveScreenSize()
                    .getadaptiveScreenSizeWidth(context, 333),
                height: AdaptiveScreenSize()
                    .getadaptiveScreenSizeHeight(context, 43),
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
                          isselected: widget.selected == 'Spots' ? true : false,
                        )),
                    GestureDetector(
                        onTap: () {
                          widget.selected = 'Services';
                          setState(() {});
                          print('services');
                        },
                        child: HomePageButtons(
                          buttontext: 'Services',
                          isselected:
                              widget.selected == 'Services' ? true : false,
                        )),
                  ],
                )),
            SizedBox(
              width:
                  AdaptiveScreenSize().getadaptiveScreenSizeWidth(context, 300),
              height:
                  AdaptiveScreenSize().getadaptiveScreenSizeHeight(context, 2),
              child: Row(
                children: [
                  Container(
                    width: AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 100),
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
                        .getadaptiveScreenSizeWidth(context, 100),
                    height: widget.selected == 'Spots'
                        ? AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 2)
                        : AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 1),
                    color: widget.selected == 'Spots'
                        ? Color(0xff296592)
                        : Color(0xff7D7D7D),
                  ),
                  Container(
                    width: AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 100),
                    height: widget.selected == 'Services'
                        ? AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 2)
                        : AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 1),
                    color: widget.selected == 'Services'
                        ? Color(0xff296592)
                        : Color(0xff7D7D7D),
                  ),
                ],
              ),
            ),
            widget.selected == 'Itinéraires'
                ? Container(
                    width: AdaptiveScreenSize()
                        .getadaptiveScreenSizeWidth(context, 333),
                    height: AdaptiveScreenSize()
                        .getadaptiveScreenSizeHeight(context, 56),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 28),
                            width: AdaptiveScreenSize()
                                .getadaptiveScreenSizeWidth(context, 300),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.all(color: Color(0xff7D7D7D)),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: AdaptiveScreenSize()
                                      .getadaptiveScreenSizeWidth(context, 15),
                                  height: AdaptiveScreenSize()
                                      .getadaptiveScreenSizeHeight(context, 19),
                                ),
                                Container(
                                  width: AdaptiveScreenSize()
                                      .getadaptiveScreenSizeWidth(context, 100),
                                  height: AdaptiveScreenSize()
                                      .getadaptiveScreenSizeHeight(context, 19),
                                  child: Text(
                                    'Où allez-vous ?',
                                    style: TextStyle(
                                      fontFamily: 'Recoleta',
                                      fontSize: AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 14),
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff413C3C),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: AdaptiveScreenSize()
                                      .getadaptiveScreenSizeWidth(context, 155),
                                ),
                                Container(
                                  width: AdaptiveScreenSize()
                                      .getadaptiveScreenSizeWidth(context, 10),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  width: AdaptiveScreenSize()
                                      .getadaptiveScreenSizeWidth(context, 5),
                                )
                              ],
                            )),
                      ],
                    ),
                  )
                : widget.selected == 'Spots'
                    ? Container(
                        width: AdaptiveScreenSize()
                            .getadaptiveScreenSizeWidth(context, 333),
                        height: AdaptiveScreenSize()
                            .getadaptiveScreenSizeHeight(context, 56),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 30),
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 300),
                                child: Row(
                                  children: [
                                    Container(
                                      width: AdaptiveScreenSize()
                                          .getadaptiveScreenSizeWidth(
                                              context, 143),
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20)),
                                        border: Border.all(
                                            color: Color(0xff7D7D7D)),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: AdaptiveScreenSize()
                                                .getadaptiveScreenSizeWidth(
                                                    context, 28),
                                            height: AdaptiveScreenSize()
                                                .getadaptiveScreenSizeHeight(
                                                    context, 30),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(20)),
                                              border: Border.all(
                                                  color: Color(0xff7D7D7D)),
                                            ),
                                            child: Container(
                                              width: AdaptiveScreenSize()
                                                  .getadaptiveScreenSizeWidth(
                                                      context, 13),
                                              height: AdaptiveScreenSize()
                                                  .getadaptiveScreenSizeHeight(
                                                      context, 13),
                                              child: Image.asset(
                                                  'assets/locationdart.png'),
                                            ),
                                          ),
                                          Container(
                                            width: AdaptiveScreenSize()
                                                .getadaptiveScreenSizeWidth(
                                                    context, 10),
                                          ),
                                          Text(
                                            'Autour de moi',
                                            style: TextStyle(
                                              fontFamily: 'Recoleta',
                                              fontSize: AdaptiveTextSize()
                                                  .getadaptiveTextSize(
                                                      context, 14),
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff413C3C),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: AdaptiveScreenSize()
                                          .getadaptiveScreenSizeWidth(
                                              context, 7),
                                    ),
                                    Container(
                                      width: AdaptiveScreenSize()
                                          .getadaptiveScreenSizeWidth(
                                              context, 150),
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20)),
                                        border: Border.all(
                                            color: Color(0xff7D7D7D)),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: AdaptiveScreenSize()
                                                .getadaptiveScreenSizeWidth(
                                                    context, 28),
                                            height: AdaptiveScreenSize()
                                                .getadaptiveScreenSizeHeight(
                                                    context, 30),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(20)),
                                              border: Border.all(
                                                  color: Color(0xff7D7D7D)),
                                            ),
                                            child: Container(
                                              width: AdaptiveScreenSize()
                                                  .getadaptiveScreenSizeWidth(
                                                      context, 8),
                                              height: AdaptiveScreenSize()
                                                  .getadaptiveScreenSizeHeight(
                                                      context, 13),
                                              child: Image.asset(
                                                'assets/locationpin.png',
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: AdaptiveScreenSize()
                                                .getadaptiveScreenSizeWidth(
                                                    context, 10),
                                          ),
                                          Text(
                                            'Autour d’un lieu',
                                            style: TextStyle(
                                              fontFamily: 'Recoleta',
                                              fontSize: AdaptiveTextSize()
                                                  .getadaptiveTextSize(
                                                      context, 14),
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff413C3C),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      )
                    : widget.selected == 'Services'
                        ? Container(
                            width: AdaptiveScreenSize()
                                .getadaptiveScreenSizeWidth(context, 333),
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 56),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeHeight(
                                            context, 30),
                                    width: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeWidth(
                                            context, 306),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: AdaptiveScreenSize()
                                              .getadaptiveScreenSizeWidth(
                                                  context, 69),
                                          child: GestureDetector(
                                            onTap: () {
                                              if (widget.selected_service
                                                  .contains('Douche')) {
                                                widget.selected_service
                                                    .remove('Douche');
                                                setState(() {});
                                              } else {
                                                widget.selected_service
                                                    .add('Douche');
                                                setState(() {});
                                              }
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: widget.selected_service
                                                        .contains('Douche')
                                                    ? Color(0xff519442)
                                                    : Color(0xffFCFAF5),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(20)),
                                                border: Border.all(
                                                    color: Color(0xff7D7D7D)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Douche',
                                                  style: TextStyle(
                                                    fontFamily: 'Recoleta',
                                                    fontSize: AdaptiveTextSize()
                                                        .getadaptiveTextSize(
                                                            context, 14),
                                                    fontWeight: FontWeight.w600,
                                                    color: widget
                                                            .selected_service
                                                            .contains('Douche')
                                                        ? Colors.white
                                                        : Color(0xff413C3C),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: AdaptiveScreenSize()
                                              .getadaptiveScreenSizeWidth(
                                                  context, 7),
                                        ),
                                        Container(
                                          width: AdaptiveScreenSize()
                                              .getadaptiveScreenSizeWidth(
                                                  context, 75),
                                          child: GestureDetector(
                                            onTap: () {
                                              if (widget.selected_service
                                                  .contains('Toilettes')) {
                                                widget.selected_service
                                                    .remove('Toilettes');
                                                setState(() {});
                                              } else {
                                                widget.selected_service
                                                    .add('Toilettes');
                                                setState(() {});
                                              }
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: widget.selected_service
                                                        .contains('Toilettes')
                                                    ? Color(0xff519442)
                                                    : Color(0xffFCFAF5),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(20)),
                                                border: Border.all(
                                                    color: Color(0xff7D7D7D)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Toilettes',
                                                  style: TextStyle(
                                                    fontFamily: 'Recoleta',
                                                    fontSize: AdaptiveTextSize()
                                                        .getadaptiveTextSize(
                                                            context, 14),
                                                    fontWeight: FontWeight.w600,
                                                    color: widget
                                                            .selected_service
                                                            .contains(
                                                                'Toilettes')
                                                        ? Colors.white
                                                        : Color(0xff413C3C),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: AdaptiveScreenSize()
                                              .getadaptiveScreenSizeWidth(
                                                  context, 7),
                                        ),
                                        Container(
                                          width: AdaptiveScreenSize()
                                              .getadaptiveScreenSizeWidth(
                                                  context, 67),
                                          child: GestureDetector(
                                            onTap: () {
                                              if (widget.selected_service
                                                  .contains('Laverie')) {
                                                widget.selected_service
                                                    .remove('Laverie');
                                                setState(() {});
                                              } else {
                                                widget.selected_service
                                                    .add('Laverie');
                                                setState(() {});
                                              }
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: widget.selected_service
                                                        .contains('Laverie')
                                                    ? Color(0xff519442)
                                                    : Color(0xffFCFAF5),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(20)),
                                                border: Border.all(
                                                    color: Color(0xff7D7D7D)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Laverie',
                                                  style: TextStyle(
                                                    fontFamily: 'Recoleta',
                                                    fontSize: AdaptiveTextSize()
                                                        .getadaptiveTextSize(
                                                            context, 14),
                                                    fontWeight: FontWeight.w600,
                                                    color: widget
                                                            .selected_service
                                                            .contains('Laverie')
                                                        ? Colors.white
                                                        : Color(0xff413C3C),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: AdaptiveScreenSize()
                                              .getadaptiveScreenSizeWidth(
                                                  context, 7),
                                        ),
                                        Container(
                                          width: AdaptiveScreenSize()
                                              .getadaptiveScreenSizeWidth(
                                                  context, 74),
                                          child: GestureDetector(
                                            onTap: () {
                                              if (widget.selected_service
                                                  .contains('Services')) {
                                                widget.selected_service
                                                    .remove('Services');
                                                setState(() {});
                                              } else {
                                                widget.selected_service
                                                    .add('Services');
                                                setState(() {});
                                              }
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: widget.selected_service
                                                        .contains('Services')
                                                    ? Color(0xff519442)
                                                    : Color(0xffFCFAF5),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(20)),
                                                border: Border.all(
                                                    color: Color(0xff7D7D7D)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Services',
                                                  style: TextStyle(
                                                    fontFamily: 'Recoleta',
                                                    fontSize: AdaptiveTextSize()
                                                        .getadaptiveTextSize(
                                                            context, 14),
                                                    fontWeight: FontWeight.w600,
                                                    color: widget
                                                            .selected_service
                                                            .contains(
                                                                'Services')
                                                        ? Colors.white
                                                        : Color(0xff413C3C),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          )
                        : const Spacer(
                            flex: 12,
                          )
          ],
        ),
      ),
    );
  }
}
