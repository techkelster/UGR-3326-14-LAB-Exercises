import 'dart:async';

Future<List<String>> loadDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 3)); // Simulating a database
  List<String> data = ["Record 1", "Record 2", "Record 3"];
  return data;
}

void main() async {
  List<String> databaseData = await loadDataFromDatabase();
  print("Data from Database: $databaseData");
}
