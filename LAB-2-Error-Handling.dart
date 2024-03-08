double divideNumbers(double a, double b) {
  if (b == 0) {
    throw ArgumentError("Cannot divide by zero.");
  }
  return a / b;
}

void main() {
  try {
    double result = divideNumbers(10, 0);
    print("Result of division: $result");
  } catch (ArgumentError) {
    print("Error: ${ArgumentError.toString()}");
  }
}
