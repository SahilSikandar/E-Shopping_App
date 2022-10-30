import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Catalog_Header extends StatelessWidget {
  const Catalog_Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(context.theme.accentColor).make(),
        "Trending Products".text.xl2.color(context.theme.accentColor).make(),
      ],
    );
  }
}
