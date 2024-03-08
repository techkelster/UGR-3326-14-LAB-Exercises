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

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    return marks.reduce((sum, mark) => sum + mark);
  }

  double calculateAverageMarks() {
    return calculateTotalMarks() / marks.length;
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Roll Number: $rollNumber");
    print("Marks: $marks");
  }
}

void main() {
  Student student1 = Student("Meja", 20, "Addis, Goro", 101, [90, 85, 92, 88]);
  Student student2 = Student("Salah", 22, "Addis, Bole", 102, [78, 85, 80, 92]);

  print("Information about student1:");
  student1.displayInfo();
  print("\nInformation about student2:");
  student2.displayInfo();

  print("\nTotal marks and average marks:");
  print(
      "Student1 - Total Marks: ${student1.calculateTotalMarks()}, Average: ${student1.calculateAverageMarks()}");
  print(
      "Student2 - Total Marks: ${student2.calculateTotalMarks()}, Average: ${student2.calculateAverageMarks()}");
}
