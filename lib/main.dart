import 'package:flutter/material.dart';
import 'input_page.dart';
import 'styles.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
          overlayColor: kActiveTranspColor,
          thumbColor: kActiveColor,
          activeTrackColor: Colors.white,
          inactiveTrackColor: kInActiveColor,
        ),
      ),
      home: InputPage(),
    );
  }
}
