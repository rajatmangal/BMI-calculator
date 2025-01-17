import 'package:flutter/material.dart';
import 'input_page.dart';
import 'Second.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0XFF0A0D22),
          accentColor: Color(0XFFEA1556),
          scaffoldBackgroundColor: Color(0XFF0A0D22),
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => InputPage(),
        '/result':(context) => Second(),
      },
    );
  }
}


