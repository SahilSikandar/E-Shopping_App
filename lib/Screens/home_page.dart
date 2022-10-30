// ignore_for_file: camel_case_types

import 'dart:async';
import 'dart:convert';

import 'package:login_ui/Screens/cart.dart';
import 'package:login_ui/utilis/Routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_ui/Models/shoes_catloge.dart';
import 'package:login_ui/themes.dart';

import 'Home_Widgets/Catalog_List.dart';
import 'Home_Widgets/Header.dart';

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    load_data(context);
  }

  load_data(BuildContext context) async {
    await Future.delayed(Duration(seconds: 2));
    var shoe_jason = await rootBundle.loadString('assets/catalog.json');
    var shoe_decode = jsonDecode(shoe_jason);
    var data = shoe_decode["products"];
    Catalog.items =
        List.from(data).map<item>((items) => item.fromMap(items)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, routes.cartRoute);
        },
        child: Icon(Icons.shopping_cart),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Catalog_Header(),
              if (Catalog.items != null && Catalog.items.isNotEmpty)
                Catalog_List().expand()
              else
                CircularProgressIndicator(color: Colors.deepPurple)
                    .centered()
                    .expand(),
            ],
          ),
        ),
      ),
    );
  }
}
