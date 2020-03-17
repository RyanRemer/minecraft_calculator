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
        primaryColor: Color(0xFF59271C),
        fontFamily: "Bits",
        backgroundColor: Color(0xFF61B43B),

        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: TextStyle(fontSize: 24, fontFamily: "Bits"))
        ),


      ),
      home: HomePage()
    );
  }
}