import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/pages/profil/parameterspage.dart';
import 'package:travel_app/utils/adaptivetext.dart';

class ConditionsGeneralesPage extends StatelessWidget {
  UserClass? user;
  ConditionsGeneralesPage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(
            flex: 30,
          ),
          Expanded(
            flex: 20,
            child: Row(
              children: [
                const Spacer(
                  flex: 20,
                ),
                Expanded(
                  flex: 55,
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 5,
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 14,
                            color: Color(0xffF16633),
                          )),
                      const Spacer(
                        flex: 5,
                      ),
                      Expanded(
                        flex: 45,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            //Navigator.pushNamed(context, '/userprofile', arguments: user_x);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ParametersPage(
                                          user: user,
                                        )));
                          },
                          child: Text(
                            'Retour',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w400,
                                color: Color(0xffF16633)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(
                  flex: 201,
                ),
                const Spacer(
                  flex: 78,
                )
              ],
            ),
          ),
          const Spacer(
            flex: 11,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Color(0xffA1A1A1),
            ),
          ),
          const Spacer(
            flex: 17,
          ),
          Expanded(
            flex: 735,
            child: FractionallySizedBox(
              widthFactor: 0.86,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 23,
                    child: Text(
                      'Conditions générales d’utilisation',
                      style: GoogleFonts.poppins(
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(context, 16),
                          fontWeight: FontWeight.w600,
                          color: Color(0xff413C3C)),
                    ),
                  ),
                  const Spacer(flex: 14),
                  Expanded(
                    flex: 160,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur urna adipiscing elit, sed do eiusmod tempor eget commodo viverra maecenas accumsan lacus vel facilisis posuere. Vestibulum imperdiet nibh vel magna lacinia ultrices. Sed id interdum urna. Nam ac elit a ante commodo tristique.',
                      style: GoogleFonts.poppins(
                        fontSize:
                            AdaptiveTextSize().getadaptiveTextSize(context, 14),
                        fontWeight: FontWeight.w600,
                        color: Color(0xffA1A1A1),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 20,
                  ),
                  Expanded(
                    flex: 20,
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 5,
                          child: Icon(
                            Icons.circle,
                            size: 14,
                            color: Color(0xff006696),
                          ),
                        ),
                        const Spacer(
                          flex: 5,
                        ),
                        Expanded(
                          flex: 150,
                          child: Text(
                            'Sed id interdum urna',
                            style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w600,
                                color: Color(0xff413C3C)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 5,
                  ),
                  Expanded(
                    flex: 20,
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 5,
                          child: Icon(
                            Icons.circle,
                            size: 14,
                            color: Color(0xff006696),
                          ),
                        ),
                        const Spacer(
                          flex: 5,
                        ),
                        Expanded(
                          flex: 150,
                          child: Text(
                            'Nam ac elit a ante commodo',
                            style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w600,
                                color: Color(0xff413C3C)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 5,
                  ),
                  Expanded(
                    flex: 20,
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 5,
                          child: Icon(
                            Icons.circle,
                            size: 14,
                            color: Color(0xff006696),
                          ),
                        ),
                        const Spacer(
                          flex: 5,
                        ),
                        Expanded(
                          flex: 150,
                          child: Text(
                            'Euismod lorem tincidunt',
                            style: GoogleFonts.poppins(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w600,
                                color: Color(0xff413C3C)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 450,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
