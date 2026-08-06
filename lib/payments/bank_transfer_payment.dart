import 'package:ecommercesystem/models/payment.dart';

class BankTransferPayment implements Payment {

  @override
  void pay(double amount) {
    print("Paid \$${amount} via Bank Transfer");
  }

  @override
  void refund(double amount) {
    print("Refunded \$${amount} via Bank Transfer");
  }
}