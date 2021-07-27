import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeofdeath/const.dart';
import 'package:timeofdeath/icon_cinsiyet.dart';
import 'package:timeofdeath/my_container.dart';
import 'package:timeofdeath/result_page.dart';
import 'package:timeofdeath/user_data.dart';


class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  double cekilenSiqaret = 0;
  double sportDay = 0;
  int boy = 161;
  int kilo = 43;
  String? seciliCinsiyet;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ölüm Vaxtı',
          style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Expanded(
            child: Row(
              children: <Widget> [
                Expanded(
                  child: MyContainer(
                    child: buildRowOutlineButton('BOY'),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: buildRowOutlineButton('KİLO'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Text(
                    'Həftədə neçə gün idmanla məşğulsunuz?',
                    textAlign: TextAlign.center,
                    style: kFontStyle,
                  ),
                  Text(
                      sportDay.round().toString(),
                      style: kNumberStyle,
                  ),
                 Slider(
                     min: 0,
                     max: 7,
                     divisions: 7,
                     value: sportDay,
                     onChanged: (double newValue){
                       setState(() {
                         sportDay = newValue;
                       });
                     },
                 )
                ],
              ),
            ),
          ),
          Expanded(

            child: MyContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text(
                      'Gün ərzində neçə siqaret çəkirsiniz?',
                      style: kFontStyle,
                    ),
                    Text(
                        cekilenSiqaret.round().toString(),
                      style: kNumberStyle,
                    ),
                    Slider(
                        min: 0,
                        max: 50,
                      value: cekilenSiqaret,
                      onChanged: (double newValue){
                          setState(() {
                            cekilenSiqaret = newValue;
                          });
                      }
                    )
                  ],
                ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget> [
                Expanded(
                  child: MyContainer(
                    onPress: (){
                      setState(() {
                        seciliCinsiyet = 'QADIN';
                      });
                    },
                    reng: seciliCinsiyet == 'QADIN'
                        ? Colors.black12
                        : Colors.white,
                    child:
                  IconCinsiyyet(
                    cinsiyet: 'QADIN',
                    icon: FontAwesomeIcons.female,
                  ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: (){
                      setState(() {
                        seciliCinsiyet = 'KİŞİ';
                      });
                    },
                    child: IconCinsiyyet(
                      icon: FontAwesomeIcons.male,
                      cinsiyet: 'KİŞİ',
                    ),

                    reng: seciliCinsiyet == 'KİŞİ'
                    ? Colors.black12
                    : Colors.white,

                  ),
                ),
              ],
            ),
          ),
          ButtonTheme(
            height: 50,
            child: FlatButton(
                color: Colors.white,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
                    UserData(kilo: kilo, boy: boy, sportDay: sportDay, seciliCinsiyet: seciliCinsiyet, cekilenSiqaret: cekilenSiqaret)
                  )));
                },
                child: Text('HESABLA', style: kFontStyle,)),
          )
        ],
      ),
    );
  }

  Row buildRowOutlineButton( String label) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RotatedBox(
                        quarterTurns:-1,
                          child:
                          Text(label, style: kFontStyle,),
                      ),
                      SizedBox(height: 10),
                      RotatedBox(
                        quarterTurns: -1,
                          child:
                          Text(
                            label == 'BOY'? boy.toString()
                            : kilo.toString(),

                            style: kNumberStyle,),
                      ),
                      SizedBox(height: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlineButton(
                              borderSide: BorderSide(
                                color: Colors.lightBlue,
                              ),
                              child: Icon(
                                FontAwesomeIcons.plus,
                                size: 15,
                              ),
                              onPressed: (){
                                setState(() {
                                  label == 'BOY'
                                  ? boy++
                                  : kilo++;
                                });
                              },
                            ),
                          ),
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlineButton(
                              borderSide: BorderSide(
                                color: Colors.lightBlue,
                              ),
                             child: Icon(
                               FontAwesomeIcons.minus,
                               size: 15,
                             ),
                                onPressed: (){
                                  setState(() {
                                    label == 'BOY'
                                        ? boy--
                                        : kilo--;
                                  });

                                }),
                          ),
                        ],

                      ),
                    ],
                  );
  }
}


