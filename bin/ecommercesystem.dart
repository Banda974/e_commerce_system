import 'package:ecommercesystem/models/cart.dart';
import 'package:ecommercesystem/models/customer.dart';
import 'package:ecommercesystem/models/order.dart';
import 'package:ecommercesystem/models/payment.dart';
import 'package:ecommercesystem/models/product.dart';
import 'package:ecommercesystem/payments/credit_card_payment.dart';
import 'package:ecommercesystem/services/store.dart';

void main() {
  print('========== Welcome to the E-Commerce System ==========\n');

  print('--- Adding Products to Store ---');
  Store store = Store();
  store.addProduct(Product(1, "Laptop", 1500));
  store.addProduct(Product(2, "Mouse", 30));
  store.addProduct(Product(3, "Keyboard", 50));
  print('Products added successfully!\n');


  Customer customer = Customer(id: 1, name: "Ahmed");
  Cart cart = Cart();
  print('Customer "${customer.name}" started shopping.\n');


  print('--- Searching and Adding to Cart ---');

  Product? laptop = store.searchProduct("Laptop");
  if (laptop != null) {
    print('Found: ${laptop.name} | Price: \$${laptop.price}');
    cart.addProduct(laptop);
    print('${laptop.name} added to cart.');
  }

  Product? mouse = store.searchProduct("Mouse");
  if (mouse != null) {
    print('Found: ${mouse.name} | Price: \$${mouse.price}');
    cart.addProduct(mouse);
    print('${mouse.name} added to cart.');
  }
  print('');

  print('--- Creating Order & Checkout ---');
  Payment payment = CreditCardPayment();

  Order order = Order(
    customer: customer,
    cart: cart,
    payment: payment,
  );

  order.checkout();
  print('');


  print('--- Order Summary ---');
  order.displayOrder();

  print('\n======================================================');
}