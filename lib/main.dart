import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());
const primaryColor = Color(0xFF0A0E21);

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff0a0e21),
        ),
        scaffoldBackgroundColor: Color(0xff0a0e21),
      ),
      home: InputPage(),
    );
  }
}
