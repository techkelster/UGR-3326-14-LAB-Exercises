abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  Circle myCircle = Circle(5.0);
  Square mySquare = Square(4.0);

  print("Circle Area: ${myCircle.calculateArea()}");
  print("Square Area: ${mySquare.calculateArea()}");
}
