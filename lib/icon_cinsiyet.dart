import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeofdeath/const.dart';

class IconCinsiyyet extends StatelessWidget {
  final String cinsiyet;
  final IconData icon;

  IconCinsiyyet({required this.cinsiyet, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Icon(
          icon,
          size: 50,
          color: Colors.black54,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cinsiyet,
          style: kFontStyle,
          ),
      ],
    );
  }
}