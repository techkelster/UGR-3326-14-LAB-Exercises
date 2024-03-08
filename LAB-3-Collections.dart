void main() {
  Map<String, int> studentMarks = {'Alice': 85, 'Bob': 92, 'Charlie': 78};

  studentMarks['David'] = 88;

  studentMarks.forEach((name, marks) {
    print('$name: $marks');
  });

  if (studentMarks.containsKey('Alice')) {
    print('Alice\'s marks: ${studentMarks['Alice']}');
  }
}
