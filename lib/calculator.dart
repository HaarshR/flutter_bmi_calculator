import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});

  final int weight;
  final int height;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String resultBMI() {
    return _bmi >= 25 ? 'Overweight' : _bmi > 18.5 ? 'Normal' : 'Underweight';
  }

  String interpreteBMI() {
    return _bmi >= 25
        ? 'Your have a higher than normal body weight. Try to get some exercise'
        : _bmi > 18.5
            ? 'You have a normal body weight. Good Job!'
            : 'Your have a lower than normal body weight. Try to get some proper nutrition';
  }
}
