import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});

  final int weight;
  final int height;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi >= 25) {
      return 'overweight';
    } else if(_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if(_bmi >= 25) {
      return 'You have a higher that normal BMI. Try to exercise more';
    } else if(_bmi > 18.5) {
      return 'You have a normal BMI. Good job!';
    } else {
      return 'You have a lower than normal BMI. You can eat a bit more';
    }
  }

}