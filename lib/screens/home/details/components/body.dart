import 'package:flutter/material.dart';
import 'package:shopapp/constants.dart';
import 'package:shopapp/screens/home/details/components/add_to_cart.dart';
import 'package:shopapp/screens/home/details/components/counter_with_fav_btn.dart';
import 'package:shopapp/screens/home/details/components/product_tile_with_image.dart';

import 'color_and_size.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final String id;
  final String subtitle;
  final String price;
  final int bro;
  final String title;
  final String image;
  final Color firstColor;
  final Color secondColor;
  final Color thirdColor;
  final String description;

  Body(
      this.id,
      this.subtitle,
      this.title,
      this.price,
      this.image,
      this.firstColor,
      this.secondColor,
      this.thirdColor,
      this.bro,
      this.description);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.335),
                  padding: EdgeInsets.only(
                    top: size.height * 0.14,
                    left: KdefaultPaddin,
                    right: KdefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(
                        firstColor: firstColor,
                        secondColor: secondColor,
                        thirdColor: thirdColor,
                        bro: bro,
                      ),
                      SizedBox(height: KdefaultPaddin / 2),
                      Description(
                        description: description,
                      ),
                      SizedBox(height: KdefaultPaddin / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: KdefaultPaddin / 2),
                      AddToCart(
                        firstColor: firstColor,
                      )
                    ],
                  ),
                ),
                ProductTileWithImage(
                  id: id,
                  description: title,
                  title: subtitle,
                  price: price,
                  image: image,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
