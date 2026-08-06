import 'package:ecommercesystem/models/product.dart';

class Store {

  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  void displayProducts() {
    products.forEach((product) {
      print(product);
    });
  }

  Product? searchProduct(String keyword) {

    for (var product in products) {

      if (product.name
          .toLowerCase()
          .contains(keyword.toLowerCase())) {

        return product;
      }
    }

    return null;
  }
}