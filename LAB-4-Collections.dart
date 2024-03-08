class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);
}

void main() {
  List<Product> cart = [];

  cart.add(Product('Laptop', 999.99, 2));
  cart.add(Product('Headphones', 49.99, 1));

  double totalPrice =
      cart.fold(0, (sum, product) => sum + (product.price * product.quantity));

  cart.removeWhere((product) => product.name == 'Laptop');

  print("Cart items: $cart");
  print("Total Price: \$${totalPrice.toStringAsFixed(2)}");
}
