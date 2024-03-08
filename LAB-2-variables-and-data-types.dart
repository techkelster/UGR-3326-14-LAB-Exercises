import 'dart:io';

void main() {
  const int speedOfLight = 299792458;

  print("Enter the distance in meters:");
  String? userInput = stdin.readLineSync();
  double distance = double.parse(userInput!);

  double timeInSeconds = distance / speedOfLight;

  print(
      "It takes: $timeInSeconds seconds for light to travel $distance meters.");
}
