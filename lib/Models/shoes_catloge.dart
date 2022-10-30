// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

//import 'dart:convert';
class Catalog {
  static final catModel = Catalog._internal();
  Catalog._internal();
  factory Catalog() => catModel;
  static List<item> items = [];
  item getbyid(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);
  item getbyposition(int pos) => items[pos];
}

class item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
  item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  item copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory item.fromMap(Map<String, dynamic> map) {
    return item(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      color: map['color'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory item.fromJson(String source) =>
      item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(covariant item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
