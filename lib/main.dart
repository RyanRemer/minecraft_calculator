import 'package:flutter/material.dart';
import 'package:minecraft_calculator/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF692b1c),
        backgroundColor: Color(0xFF6d9d6d),
      ),
      home: HomePage()
    );
  }
}