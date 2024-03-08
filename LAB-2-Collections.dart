import 'dart:math';

void main() {
  List<int> numbers = List.generate(10, (_) => Random().nextInt(10));

  Set<int> uniqueNumbers = Set<int>.from(numbers);

  print("Original numbers: $numbers");
  print("Unique numbers: $uniqueNumbers");
}
