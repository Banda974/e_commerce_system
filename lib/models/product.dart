class Product {
  int _id;
  String _name;
  double _price;

  Product(this._id, this._name, this._price);

  int get id => _id;

  String get name => _name;

  double get price => _price;

  set price(double value) {
    if (value > 0) {
      _price = value;
    }
  }

  @override
  String toString() {
    return "$_id - $_name : \$$_price";
  }
}