import 'package:ecommercesystem/enums/order_status.dart';
import 'package:ecommercesystem/models/cart.dart';
import 'package:ecommercesystem/models/customer.dart';
import 'package:ecommercesystem/models/payment.dart';

class Order {

  Customer customer;

  Cart cart;

  Payment payment;

  OrderStatus status;

  Order({
    required this.customer,
    required this.cart,
    required this.payment,
    this.status = OrderStatus.pending,
  });

  void checkout() {
    payment.pay(cart.getTotal());

    status = OrderStatus.processing;
  }

  void ship() {
    status = OrderStatus.shipped;
  }

  void deliver() {
    status = OrderStatus.delivered;
  }

  void cancel() {
    payment.refund(cart.getTotal());

    status = OrderStatus.cancelled;
  }

  void displayOrder() {
    print(customer);

    cart.displayCart();

    print('Order Status: ${status.name}');
  }
}