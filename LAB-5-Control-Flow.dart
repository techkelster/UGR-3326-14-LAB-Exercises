import 'dart:io';

void main() {
  stdout.write("Enter the numeric grade: ");
  double numericGrade = double.parse(stdin.readLineSync()!);

  String letterGrade = getLetterGrade(numericGrade);

  print("Letter Grade: $letterGrade");
}

String getLetterGrade(double numericGrade) {
  String letterGrade = '';

  switch (numericGrade) {
    case >= 83:
      letterGrade = 'A';
      break;
    case >= 68:
      letterGrade = 'B';
      break;
    case >= 50:
      letterGrade = 'C';
      break;
    case >= 40:
      letterGrade = 'D';
      break;
    default:
      letterGrade = 'F';
  }

  return letterGrade;
}
