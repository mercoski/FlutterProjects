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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            const Expanded(flex: 1, child: Divider()),
            widget.selected == 'Itinéraires'
                ? Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: AdaptiveScreenSize()
                                .getadaptiveScreenSizeHeight(context, 20),
                            width: AdaptiveScreenSize()
                                .getadaptiveScreenSizeWidth(context, 300),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.all(color: Color(0xff7D7D7D)),
                            ),
                            child: Row(
                              children: [
                                const Spacer(
                                  flex: 15,
                                ),
                                Expanded(
                                  flex: 100,
                                  child: Text(
                                    'Où allez-vous ?',
                                    style: GoogleFonts.poppins(
                                        fontSize: AdaptiveTextSize()
                                            .getadaptiveTextSize(context, 14),
                                        color: Color(0xff413C3C),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Expanded(
                                  flex: 140,
                                  child: Container(),
                                ),
                                const Expanded(
                                  flex: 10,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                  ),
                                ),
                                Expanded(
                                  flex: 15,
                                  child: Container(),
                                )
                              ],
                            )),
                      ],
                    ),
                  )
                : widget.selected == 'Spots'
                    ? Expanded(
                        flex: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeHeight(context, 20),
                                width: AdaptiveScreenSize()
                                    .getadaptiveScreenSizeWidth(context, 300),
                                child: Row(
                                  children: [
                                    const Spacer(
                                      flex: 15,
                                    ),
                                    Expanded(
                                      flex: 143,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          border: Border.all(
                                              color: Color(0xff7D7D7D)),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(18)),
                                                border: Border.all(
                                                    color: Color(0xff7D7D7D)),
                                              ),
                                              child: const Icon(
                                                Icons.location_searching,
                                                size: 18,
                                              ),
                                            ),
                                            Text(
                                              'Autour de moi',
                                              style: GoogleFonts.poppins(
                                                  fontSize: AdaptiveTextSize()
                                                      .getadaptiveTextSize(
                                                          context, 14),
                                                  color: Color(0xff413C3C),
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const Spacer(
                                      flex: 17,
                                    ),
                                    Expanded(
                                      flex: 143,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          border: Border.all(
                                              color: Color(0xff7D7D7D)),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(18)),
                                                border: Border.all(
                                                    color: Color(0xff7D7D7D)),
                                              ),
                                              child: const Icon(
                                                Icons.location_pin,
                                                size: 18,
                                              ),
                                            ),
                                            Text(
                                              'Autour d’un lieu',
                                              style: GoogleFonts.poppins(
                                                  fontSize: AdaptiveTextSize()
                                                      .getadaptiveTextSize(
                                                          context, 14),
                                                  color: Color(0xff413C3C),
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const Spacer(
                                      flex: 15,
                                    )
                                  ],
                                )),
                          ],
                        ),
                      )
                    : widget.selected == 'Services'
                        ? Expanded(
                            flex: 6,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeHeight(
                                            context, 20),
                                    width: AdaptiveScreenSize()
                                        .getadaptiveScreenSizeWidth(
                                            context, 300),
                                    child: Row(
                                      children: [
                                        const Spacer(
                                          flex: 15,
                                        ),
                                        Expanded(
                                          flex: 69,
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
                                                  style: GoogleFonts.poppins(
                                                      fontSize: AdaptiveTextSize()
                                                          .getadaptiveTextSize(
                                                              context, 14),
                                                      color: widget
                                                              .selected_service
                                                              .contains(
                                                                  'Douche')
                                                          ? Colors.white
                                                          : Color(0xff413C3C),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Spacer(
                                          flex: 7,
                                        ),
                                        Expanded(
                                          flex: 75,
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
                                                  style: GoogleFonts.poppins(
                                                      fontSize: AdaptiveTextSize()
                                                          .getadaptiveTextSize(
                                                              context, 14),
                                                      color: widget
                                                              .selected_service
                                                              .contains(
                                                                  'Toilettes')
                                                          ? Colors.white
                                                          : Color(0xff413C3C),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Spacer(
                                          flex: 7,
                                        ),
                                        Expanded(
                                          flex: 67,
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
                                                  style: GoogleFonts.poppins(
                                                      fontSize: AdaptiveTextSize()
                                                          .getadaptiveTextSize(
                                                              context, 14),
                                                      color: widget
                                                              .selected_service
                                                              .contains(
                                                                  'Laverie')
                                                          ? Colors.white
                                                          : Color(0xff413C3C),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Spacer(
                                          flex: 7,
                                        ),
                                        Expanded(
                                          flex: 74,
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
                                                  style: GoogleFonts.poppins(
                                                      fontSize: AdaptiveTextSize()
                                                          .getadaptiveTextSize(
                                                              context, 14),
                                                      color: widget
                                                              .selected_service
                                                              .contains(
                                                                  'Services')
                                                          ? Colors.white
                                                          : Color(0xff413C3C),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Spacer(
                                          flex: 15,
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          )
                        : const Spacer(
                            flex: 6,
                          )
          ],
        ),
      ),
    );
  }
}
