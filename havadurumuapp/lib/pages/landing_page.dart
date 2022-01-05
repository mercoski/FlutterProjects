import 'package:flutter/material.dart';
import 'package:havadurumuapp/designs/header_design.dart';
import 'package:havadurumuapp/functions/current_location.dart';
import 'package:havadurumuapp/pages/details_page.dart';
import 'package:havadurumuapp/variable_class/defaultVariables.dart';
import 'package:havadurumuapp/designs/background_decoration.dart';
import 'package:havadurumuapp/widgets/near_cities_widget.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  void getCurrentLocation() async {
    await determinePosition(
        defaultVariables: Provider.of<DefaultVariables>(context, listen: false),
        context: context);
    setState(() {});
  }

  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      getCurrentLocation();
    });
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: background_decoration(image: 'search'),
      child: Provider.of<DefaultVariables>(context, listen: false)
                  .closeCitiesNames[0] ==
              ''
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Container(
                      alignment: Alignment.center,
                      child: headertext(),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Provider.of<DefaultVariables>(context,
                                    listen: false)
                                .setState(Provider.of<DefaultVariables>(context,
                                        listen: false)
                                    .closeCitiesNames[index]);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsPage(),
                              ),
                            );
                          },
                          child: NearCities(
                            city:
                                'City : ${Provider.of<DefaultVariables>(context, listen: false).closeCitiesNames[index]}',
                            distance:
                                'Distance :${Provider.of<DefaultVariables>(context, listen: false).closeCitiesDistances[index]} km',
                            itemCount: 5,
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider();
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
