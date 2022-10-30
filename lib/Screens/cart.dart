//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:login_ui/Models/cart_model.dart';
import 'package:login_ui/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        title: "Cart".text.make(),
        centerTitle: true,
        //backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          _Carlist().p32().expand(),
          Divider(),
          _carttotal(),
        ],
      ),
    );
  }
}

class _carttotal extends StatelessWidget {
  //const _carttotal({super.key});

  @override
  Widget build(BuildContext context) {
    final _cart = Cartmodel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${0000}".text.xl4.bold.color(context.theme.accentColor).make(),
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            'Buy button is not functional yet'.text.make()));
                  },
                  child: 'Buy '.text.make())
              .w32(context)
        ],
      ),
    );
  }
}

class _Carlist extends StatefulWidget {
  //const _Carlist({super.key});

  @override
  State<_Carlist> createState() => __CarlistState();
}

class __CarlistState extends State<_Carlist> {
  final _cart = Cartmodel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.check),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
        title: _cart.items[index].name.text.make(),
      ),
    );
  }
}
