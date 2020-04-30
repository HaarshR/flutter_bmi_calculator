import 'package:flutter/material.dart';
import 'package:flutterbmicalculator/results_page.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        accentColor: Color(0xFF008080),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        sliderTheme: SliderThemeData(
          thumbColor: Color(0xFF008080),
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 10.0,
          ),
          trackHeight: 4.0,
          overlayColor: Color(0x29009e9e),
          activeTrackColor: Color(0xFF008080),
          inactiveTrackColor: Color(0xFF8D8E98),
        ),
        textTheme: TextTheme(
          body1: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/results': (context) => ResultsPage(),
      },
    );
  }
}
