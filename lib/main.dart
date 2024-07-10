import 'package:flutter/material.dart';
import 'package:flutter_2/pages/first_page.dart';
import 'package:flutter_2/pages/home_page.dart';
import 'package:flutter_2/pages/second_page.dart';
import 'package:flutter_2/pages/setting_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
        '/settings': (context) => SettingPage(),
        '/home': (context) => HomePage(),
      }
    );
  }

}