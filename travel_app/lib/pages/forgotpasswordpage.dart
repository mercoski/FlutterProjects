import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/functions/resetpassword.dart';
import 'package:travel_app/utils/adaptivetext.dart';
import 'package:travel_app/widgets/InputField.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/forgetpassword.jpg'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(flex: 50, child: Container()),
              Expanded(
                flex: 22,
                child: Row(
                  children: [
                    Expanded(flex: 20, child: Container()),
                    Expanded(
                        flex: 20,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/loginpage');
                          },
                        )),
                    Expanded(flex: 335, child: Container()),
                  ],
                ),
              ),
              Expanded(
                flex: 753,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.09),
                  child: Column(
                    children: [
                      Expanded(flex: 211, child: Container()),
                      Expanded(
                        flex: 41,
                        child: Text(
                          'Mot de passe oublié ?',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.averiaSerifLibre(
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 30),
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Expanded(flex: 8, child: Container()),
                      Expanded(
                        flex: 20,
                        child: Text(
                          'Vous allez recevoir un code par mail.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: AdaptiveTextSize()
                                .getadaptiveTextSize(context, 14),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(flex: 28, child: Container()),
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
                      Expanded(flex: 10, child: Container()),
                      Expanded(
                          flex: 50,
                          child: SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: ElevatedButton(
                              onPressed: () async {
                                await resetPassword(Provider.of<UserClass>(
                                        context,
                                        listen: false)
                                    .textEditingController_user
                                    .text);
                              },
                              child: Text(
                                'Envoyer',
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
                      Expanded(flex: 335, child: Container()),
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
