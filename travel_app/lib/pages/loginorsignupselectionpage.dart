import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utils/adaptivetext.dart';

class LoginSignupSelectionPage extends StatelessWidget {
  const LoginSignupSelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Splace.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 0.82,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 96, child: Container()),
                Expanded(
                    flex: 48,
                    child: Container(
                      child: Image.asset('assets/pin.png'),
                    )),
                Expanded(
                  flex: 48,
                  child: Text(
                    'Bienvenue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Recoleta',
                        fontSize:
                            AdaptiveTextSize().getadaptiveTextSize(context, 36),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 60,
                  child: Text(
                    'Plus que quelques étapes avant de (re)découvrir la France',
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 14),
                    ),
                  ),
                ),
                Expanded(
                    flex: 40,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                    )),
                Expanded(
                  flex: 20,
                  child: Text(
                    'Vous avez déjà un compte ?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 14),
                    ),
                  ),
                ),
                Expanded(
                    flex: 50,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/loginpage');
                        },
                        child: Text(
                          'Se connecter',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: AdaptiveTextSize()
                                .getadaptiveTextSize(context, 15),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff413C3C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34),
                          ),
                        ),
                      ),
                    )),
                Expanded(flex: 24, child: Container()),
                Expanded(
                  flex: 48,
                  child: Text(
                    'Première fois sur Spot On Travel ? Inscrivez-vous.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 14),
                    ),
                    overflow: TextOverflow.clip,
                  ),
                ),
                Expanded(
                    flex: 50,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/signuppage');
                        },
                        child: Text(
                          'S’inscrire',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: AdaptiveTextSize()
                                .getadaptiveTextSize(context, 15),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff413C3C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34),
                          ),
                        ),
                      ),
                    )),
                Expanded(flex: 328, child: Container()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
