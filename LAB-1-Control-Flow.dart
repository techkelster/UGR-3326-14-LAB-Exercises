import 'dart:io';

void main() {
  print("Enter a number: ");
  String userInput = stdin.readLineSync()!;

  int number = int.parse(userInput);

  if (number % 2 == 0) {
    print('$number is an even number.');
  } else {
    print('$number is an odd number.');
  }
}
