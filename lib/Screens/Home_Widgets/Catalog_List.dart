// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:login_ui/Models/cart_model.dart';
import 'package:login_ui/Screens/Home_page_Details.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Models/shoes_catloge.dart';
import 'Catalog_Image.dart';

class Catalog_List extends StatelessWidget {
  const Catalog_List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: Catalog.items.length,
        itemBuilder: (context, index) {
          final catalog = Catalog.items[index];
          return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => home_pagedetails(
                        catalog: catalog,
                      ),
                    ));
              },
              child: Catalog_Item(catalog: catalog));
        });
  }
}

class Catalog_Item extends StatelessWidget {
  final item catalog;
  const Catalog_Item({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          transitionOnUserGestures: true,
          child: CatalogImage(
            image: catalog.image,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.color(context.theme.accentColor).bold.lg.make(),
            catalog.desc.text
                .color(context.theme.accentColor)
                .textStyle(context.captionStyle)
                .make(),
            5.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}"
                    .text
                    .color(context.theme.accentColor)
                    .bold
                    .make(),
                ele_Added(
                  catalog: catalog,
                ).pOnly(right: 1)
              ],
            )
          ],
        ))
      ],
    )).color(context.cardColor).rounded.square(150).make().py12();
  }
}

class ele_Added extends StatefulWidget {
  final item catalog;
  const ele_Added({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<ele_Added> createState() => _ele_AddedState();
}

class _ele_AddedState extends State<ele_Added> {
  bool _isadded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _isadded = _isadded.toggle();
        final _catalog = Catalog();
        final _cartmodel = Cartmodel();
        _cartmodel.catalog == _catalog;
        _cartmodel.add(widget.catalog);
        setState(() {});
      },
      child: _isadded ? Icon(Icons.done) : "Add to Cart".text.white.make(),
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
        StadiumBorder(),
      )),
    );
  }
}
