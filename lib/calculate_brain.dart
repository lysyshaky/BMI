import 'dart:math';

class CalcultatorBrain {
  CalcultatorBrain({this.height, this.weight});

  final weight;
  final height;
  double bmi = 0;

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    print(weight);
    print(height);
    print(bmi);
    return bmi.toStringAsFixed(1);
  }

  // String getResult() {
  //   if (bmi >= 25) {
  //     return 'Overweight';
  //   } else if (bmi > 18.5) {
  //     return 'Normal';
  //   } else {
  //     return 'Underweight';
  //   }
  // }

  String getInterpretetion() {
    if (bmi >= 25) {
      return 'You have a highter than normal body weight. Try to exercise more';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweigt';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}
