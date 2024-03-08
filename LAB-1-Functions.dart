import 'dart:io';

void main() {
  stdout.write('First Number: ');
  String? num1Str = stdin.readLineSync();

  stdout.write('second Number: ');
  String? num2Str = stdin.readLineSync();

  double num1 = double.parse(num1Str!);
  double num2 = double.parse(num2Str!);

  double sumResult = calculateSum(num1, num2);

  print("The sum of $num1 and $num2 is: $sumResult");
}

double calculateSum(double a, double b) {
  return a + b;
}
