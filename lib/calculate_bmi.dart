import 'dart:math';

class Calculator {
  final weight;
  final height;
  double _bmi = 1;

  Calculator({this.height, this.weight});
  String bmiCalc() {
    _bmi = weight / pow(height / 100, 2);
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String bmiResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi <= 18.5) {
      return 'under weight';
    } else {
      return 'normal';
    }
  }

  String bmiDes() {
    if (_bmi >= 25) {
      return 'You are having over weight,Try harder';
    } else if (_bmi <= 18.5) {
      return 'you are under weight, Try to have healthy diet';
    } else {
      return 'You have a normal body weight.Good job!';
    }
  }
}
