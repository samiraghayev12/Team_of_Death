import 'package:timeofdeath/user_data.dart';


class Hesab{
   UserData _userData;
  Hesab(this._userData) ;
  double hesablama(){
    double netice;

    netice = 80 + _userData.sportDay - _userData.cekilenSiqaret;
    netice = netice + (_userData.boy / _userData.kilo);
    
    if (_userData.seciliCinsiyet == 'QADIN') {
      return netice + 3;

    }else{
      return netice;
    }

  }
}