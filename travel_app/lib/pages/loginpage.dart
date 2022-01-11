// ignore_for_file: avoid_single_cascade_in_expression_statements

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/UserClass/userClass.dart';
import 'package:travel_app/functions/loginfunction.dart';
import 'package:travel_app/widgets/InputField.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        primary: true,
        centerTitle: true,
        title: const Text('Spot On Travel'),
        leading: Image.asset('assets/spotonlogo.png'),
        backgroundColor: Colors.amber[800],
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Login',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          InputField(
            textEditingController:
                Provider.of<UserClass>(context).textEditingController_user,
            autocorrect: false,
            enablesuggestions: true,
            hintText: 'Username',
            obscureText: false,
            verticalmargin: 10.0,
            iconImage: Icons.account_circle,
            labelText: 'Username',
            horizontalmargin: 20,
          ),
          const Divider(),
          InputField(
            textEditingController:
                Provider.of<UserClass>(context).textEditingController_pass,
            autocorrect: false,
            enablesuggestions: false,
            hintText: 'Password',
            obscureText: true,
            verticalmargin: 10.0,
            iconImage: Icons.lock,
            labelText: 'Password',
            horizontalmargin: 20,
          ),
          TextButton(
            style: TextButton.styleFrom(alignment: Alignment.centerRight),
            onPressed: () {
              print('//TO-DO forgot my password');
            },
            child: const Text(
              'Forgot my password',
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.red),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.6,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green[400],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                onPressed: () async {
                  await loginFunction(
                      context,
                      Provider.of<UserClass>(context, listen: false)
                          .textEditingController_user
                          .text,
                      Provider.of<UserClass>(context, listen: false)
                          .textEditingController_pass
                          .text);
                },
                child: Text('Login')),
          ),
          const Divider(),
          const Text(
            'Or Sign-up Using',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SignInButton(Buttons.GoogleDark, onPressed: () {
                print('Google sign-in');
              }),
              SignInButton(Buttons.AppleDark, onPressed: () {
                print('Apple sign-in');
              }),
              SignInButton(Buttons.Facebook, onPressed: () {
                print('Facebook sign-in');
              }),
            ],
          )
        ],
      ),
    );
  }
}
