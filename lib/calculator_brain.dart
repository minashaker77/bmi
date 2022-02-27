import 'dart:math';

class BMIBrain {
  BMIBrain({required this.weight, required this.height,});

  final int height;
  final int weight;
  late final double _bmi;

  String calculateBMI() {
    _bmi = weight /pow(height / 100,2,);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'شما چاق هستید';
    } else if (_bmi > 18.5) {
      return ' شما سالم هستید';
    } else {
      return 'شما لاغر هستید';
    }
  }

  String getAdvices() {
    if (_bmi > 25) {
      return 'کمتر غذا بخور سرم بخوری';
    } else if (_bmi > 18.5) {
      return 'به منم بوگو چه کردی ایطو فیتی';
    } else {
      return 'بیشتر غذا بخور جون بیگیری';
    }
  }
}
