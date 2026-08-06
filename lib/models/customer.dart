class Customer {
  int id;
  String name;

  Customer({
    required this.id,
    required this.name,
  });

  @override
  String toString() {
    return "$name";
  }
}