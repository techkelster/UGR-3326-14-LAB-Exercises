class Student {
  String name;
  List<double> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }

    double totalMarks = marks.reduce((sum, mark) => sum + mark);
    return totalMarks / marks.length;
  }
}

void main() {
  Student alice = Student('Alice', [85, 90, 88]);
  Student bob = Student('Bob', [92, 89, 94]);

  print("${alice.name}'s Average Mark: ${alice.calculateAverageMark()}");
  print("${bob.name}'s Average Mark: ${bob.calculateAverageMark()}");
}
