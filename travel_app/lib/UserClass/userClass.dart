import 'package:flutter/material.dart';

class UserClass with ChangeNotifier {
  String user_mail = 'default_mail';
  String user_password = 'default_pass';
  TextEditingController textEditingController_user = TextEditingController();
  TextEditingController textEditingController_pass = TextEditingController();

  void SetMail(String user_mail) async {
    this.user_mail = user_mail;
    notifyListeners();
  }

  void SetPassword(String user_password) {
    this.user_password = user_password;
    notifyListeners();
  }
}
