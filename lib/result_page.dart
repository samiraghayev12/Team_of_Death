import 'package:flutter/material.dart';
import 'package:timeofdeath/const.dart';
import 'package:timeofdeath/user_data.dart';
import 'math.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;

  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_userData.seciliCinsiyet.toString(),
          style: TextStyle(
            color: Colors.black87
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
              child: Center(
                  child: Text(
                    Hesab(_userData).hesablama().round().toString(),
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ))),
          Expanded(
            flex: 1,
              child: FlatButton(
            color: Colors.white,
            child: Text('Geri', style: kFontStyle,),
            onPressed: (){
             Navigator.pop(context);
            },
          )),
        ],
      ),
    );
  }
}
