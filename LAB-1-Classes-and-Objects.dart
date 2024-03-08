class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

void main() {
  Person person1 = Person("Abdulmejd", 22, "Goro Addis");
  Person person2 = Person("Salah", 21, "Goro Addis");

  print("Information about person1:");
  person1.displayInfo();

  print("\nInformation about person2:");
  person2.displayInfo();

  // Modify attributes of person1
  person1.age = 23;
  person1.address = "Messina, italy";

  print("\nUpdated information about person1:");
  person1.displayInfo();
}
