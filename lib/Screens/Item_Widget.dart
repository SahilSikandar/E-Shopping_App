// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:login_ui/Models/shoes_catloge.dart';

class Item_widget extends StatelessWidget {
  final item items;

  const Item_widget({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        elevation: 3,
        child: ListTile(
          leading: Image.network(
            items.image,
            fit: BoxFit.fill,
          ),
          title: Text(
            items.name,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            items.desc.toString(),
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          trailing: Text(
            "\$${items.price}",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
