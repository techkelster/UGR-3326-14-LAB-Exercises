class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  Rectangle myRectangle = Rectangle(5.0, 8.0);

  print("Rectangle Area: ${myRectangle.calculateArea()}");
  print("Rectangle Perimeter: ${myRectangle.calculatePerimeter()}");
}
