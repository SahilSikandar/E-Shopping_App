import 'package:flutter/material.dart';
import 'package:login_ui/Models/shoes_catloge.dart';
import 'package:login_ui/themes.dart';
import 'package:login_ui/utilis/Routes.dart';
import 'package:velocity_x/velocity_x.dart';

class home_pagedetails extends StatelessWidget {
  final item catalog;
  const home_pagedetails({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}"
                .text
                .color(context.theme.accentColor)
                .bold
                .xl4
                .make(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, routes.cartRoute);
              },
              child: "Add to Cart".text.white.make(),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                StadiumBorder(),
              )),
            ).wh(120, 50)
          ],
        ).p16(),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
              tag: Key(catalog.id.toString()),
              transitionOnUserGestures: true,
              child: Image.network(catalog.image).h32(context)),
          Expanded(
            child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                width: context.screenWidth,
                color: context.cardColor,
                child: Column(children: [
                  catalog.name.text
                      .color(context.theme.accentColor)
                      .bold
                      .lg
                      .xl4
                      .make(),
                  catalog.desc.text
                      .color(context.theme.accentColor)
                      .textStyle(context.captionStyle)
                      .xl
                      .make(),
                  10.heightBox,
                  "Ea labore dolor sanctus dolores sea ea lorem magna sit. Stet lorem ipsum sed invidunt lorem ea amet dolor. Ipsum voluptua et et ut rebum amet. Stet magna at gubergren voluptua kasd justo magna dolor sed. Consetetur elitr dolor sed sit vero sanctus magna ipsum vero. Sit amet no dolores."
                      .text
                      .color(context.theme.accentColor)
                      .textStyle(context.captionStyle)
                      .make()
                      .p20()
                ]).py64(),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
