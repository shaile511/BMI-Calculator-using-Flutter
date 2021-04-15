import 'file:///C:/Users/sshai/AndroidStudioProjects/bmi-calculator-flutter/lib/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'screens/input_page.dart';
import 'package:flutter/services.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        accentColor: Colors.black,
        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
