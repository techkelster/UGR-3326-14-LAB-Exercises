class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  Product myProduct = Product("Widget", 10.0, 3);
  print("Total Cost of ${myProduct.name}: ${myProduct.calculateTotalCost()}");
}
