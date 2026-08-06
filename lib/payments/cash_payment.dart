import 'package:ecommercesystem/models/payment.dart';

class CashPayment implements Payment {

  @override
  void pay(double amount) {
    print("Paid \$${amount} in Cash");
  }

  @override
  void refund(double amount) {
    print("Refunded \$${amount} in Cash");
  }
}