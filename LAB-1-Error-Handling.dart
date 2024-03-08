import 'dart:io';

void main() {
  try {
    stdout.write("Enter a number: ");
    String userInput = stdin.readLineSync()!;

    int number = int.parse(userInput);

    print("Successfully converted to an integer: $number");
  } catch (e) {
    print("Error: Invalid input. Please enter a valid number.");
  }
}
