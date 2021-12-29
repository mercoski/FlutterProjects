import 'package:average_life_expectency/user_variables.dart';

class LifeExpCalc {
  UserVariables _userVariables;
  LifeExpCalc(this._userVariables);

  double calculation() {
    double sonuc;
    sonuc = 90 +
        _userVariables.daysOfSport -
        _userVariables.numberOfSmoke +
        (_userVariables.defaultHeight / _userVariables.defaultWeight);
    if (_userVariables.seciliCinsiyet == 'FEMALE') {
      return sonuc + 3;
    } else {
      return sonuc;
    }
  }
}
