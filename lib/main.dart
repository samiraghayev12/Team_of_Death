import 'package:flutter/material.dart';
import './input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightBlue[300],
        primaryColor: Colors.lightBlue[300],
      ),
      home:InputPage(),
    );
  }
}


