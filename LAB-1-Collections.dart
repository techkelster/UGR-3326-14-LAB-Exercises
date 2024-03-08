void main() {
  List<String> hobbies = ['Reading', 'Coding', 'Hiking'];

  hobbies.add('Gardening');

  hobbies.remove('Coding');

  hobbies.sort();

  if (hobbies.isEmpty) {
    print("No hobbies found.");
  } else {
    print("My favorite hobbies: $hobbies");
  }
}
