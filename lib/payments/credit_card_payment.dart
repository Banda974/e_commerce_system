import 'package:ecommercesystem/models/payment.dart';

class CreditCardPayment implements Payment {

  @override
  void pay(double amount) {
    print("Paid \$${amount} using Credit Card");
  }

  @override
  void refund(double amount) {
    print("Refunded \$${amount} to Credit Card");
  }
}