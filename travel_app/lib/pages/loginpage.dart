// ignore_for_file: avoid_single_cascade_in_expression_statements

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/functions/googlesignhelper.dart';

import 'package:travel_app/functions/loginfunction.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:travel_app/widgets/InputField.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/signin.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(flex: 50),
              Expanded(
                flex: 50,
                child: Row(
                  children: [
                    const Spacer(flex: 20),
                    Expanded(
                        flex: 15,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(
                                context, '/loginsignupselectionpage');
                          },
                        )),
                    const Spacer(flex: 255),
                    Expanded(
                      flex: 150,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            alignment: Alignment.centerRight,
                            primary: Colors.green),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/signuppage');
                        },
                        child: Text(
                          'S’inscrire',
                          style: GoogleFonts.poppins(
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 15),
                              fontWeight: FontWeight.w500,
                              color: Color(0xff413C3C)),
                        ),
                      ),
                    ),
                    const Spacer(flex: 21),
                  ],
                ),
              ),
              Expanded(
                flex: 712,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.09),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 49,
                        child: Text(
                          'Se connecter',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Recoleta',
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 36),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Spacer(flex: 13),
                      Expanded(
                        flex: 50,
                        child: SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: InputField(
                            textEditingController:
                                Provider.of<UserClass>(context)
                                    .textEditingController_user,
                            autocorrect: false,
                            enablesuggestions: true,
                            hintText: 'E-mail',
                            obscureText: false,
                          ),
                        ),
                      ),
                      const Spacer(flex: 15),
                      Expanded(
                        flex: 50,
                        child: SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: InputField(
                            textEditingController:
                                Provider.of<UserClass>(context)
                                    .textEditingController_pass,
                            autocorrect: false,
                            enablesuggestions: false,
                            hintText: 'Mot de passe',
                            obscureText: true,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 42,
                        child: TextButton(
                          style:
                              TextButton.styleFrom(alignment: Alignment.center),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/forgotpass');
                          },
                          child: Text(
                            'Mot de passe oublié ?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff413C3C),
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 14),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 50,
                          child: SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: ElevatedButton(
                              onPressed: () async {
                                await loginFunction(
                                    context,
                                    Provider.of<UserClass>(context,
                                            listen: false)
                                        .textEditingController_user
                                        .text,
                                    Provider.of<UserClass>(context,
                                            listen: false)
                                        .textEditingController_pass
                                        .text,
                                    'mail');
                              },
                              child: Text(
                                'Connexion',
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
                      const Spacer(flex: 11),
                      Expanded(
                        flex: 50,
                        child: SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: ElevatedButton.icon(
                            icon: Image.asset('assets/google.png'),
                            onPressed: () async {
                              await loginFunction(
                                  context,
                                  Provider.of<UserClass>(context, listen: false)
                                      .textEditingController_user
                                      .text,
                                  Provider.of<UserClass>(context, listen: false)
                                      .textEditingController_pass
                                      .text,
                                  'google');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(34),
                                ),
                                alignment: Alignment.centerLeft),
                            label: Text(
                              'Continuer avec Google',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 15),
                                  color: Color(0xff413C3C)),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(flex: 380),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
