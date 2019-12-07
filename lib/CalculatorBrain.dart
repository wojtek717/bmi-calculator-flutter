import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String CalculateBMI(){
    _bmi = (weight/pow(height/100, 2));

    return _bmi.toStringAsFixed(1);
  }
}