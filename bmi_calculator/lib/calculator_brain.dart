import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double? _bmi = 0;

  String? calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi?.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! > 40) {
      return "Obesity Level III";
    } else if (_bmi! >= 35) {
      return "Obesity Level II";
    } else if (_bmi! >= 30) {
      return "Obesity Level I";
    } else if (_bmi! >= 25) {
      return "Overweight";
    } else if (_bmi! >= 18.5) {
      return "Normal";
    } else if (_bmi! >= 17) {
      return "Underweight Level I";
    } else if (_bmi! >= 16) {
      return "Underweight Level II";
    } else {
      return "Underweight Level III";
    }
  }

  String getInterpretation() {
    if (_bmi! > 40) {
      return "You have a higher than normal weight. Your risk is very serious. Seek help!";
    } else if (_bmi! >= 35) {
      return "You have a higher than normal weight. Your risk is serious!";
    } else if (_bmi! >= 30) {
      return "You have a higher than normal weight. Your risk is moderate!";
    } else if (_bmi! >= 25) {
      return "You have a higher than normal weight. Your risk is raised.";
    } else if (_bmi! >= 18.5) {
      return "You have a normal body weight. Good job!";
    } else if (_bmi! >= 17) {
      return "You have a lower than normal weight. You can eat a bit more.";
    } else if (_bmi! >= 16) {
      return "You have a lower than normal weight. You must eat a bit more. You are almost malnourished!";
    } else {
      return "You have a extremely lower weight. You must eat a bit more. You are malnourished!";
    }
  }
}
