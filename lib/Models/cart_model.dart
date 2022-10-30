import 'package:flutter/foundation.dart';
import 'package:login_ui/Models/shoes_catloge.dart';

class Cartmodel {
  static final cartmodel = Cartmodel._internal();
  Cartmodel._internal();
  factory Cartmodel() => cartmodel;
  late Catalog _catalog;
  final List<int> _getids = [];
  Catalog get catalog => _catalog;
  set(Catalog newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<item> get items => _getids.map((id) => _catalog.getbyid(id)).toList();
  num get totalprice =>
      items.fold(0, (first, current) => first + current.price);
  void add(item item1) {
    _getids.add(item1.id);
  }

  void remove(item item2) {
    _getids.remove(item2.id);
  }
}
