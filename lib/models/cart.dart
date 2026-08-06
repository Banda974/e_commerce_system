import 'package:ecommercesystem/models/product.dart';

class Cart {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  double getTotal() =>
      products.fold(0, (sum, item) => sum + item.price);

  void displayCart() {
    for (var item in products) {
      print(item);
    }

    print("Total = ${getTotal()}");
  }
}