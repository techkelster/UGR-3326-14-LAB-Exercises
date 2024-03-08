import 'dart:io';

void main() {
  stdout.write('String to revers: ');
  String originalString = stdin.readLineSync()!;
  String reversedString = reverseString(originalString);

  print("Original String: $originalString");
  print("Reversed String: $reversedString");
}

String reverseString(String input) {
  List<String> characters = input.split('');
  characters = characters.reversed.toList();
  return characters.join();
}
