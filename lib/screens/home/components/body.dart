import 'package:flutter/material.dart';

import 'package:shopapp/screens/cart/cart_screen.dart';
import 'package:shopapp/screens/home/components/search_field.dart';
import 'package:shopapp/screens/profile/profile_screen.dart';

import 'icon_btn_with_counter.dart';
import 'items.dart';

class Body extends StatelessWidget {
  void carts(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CartScreen.routeName,
    );
  }

  void profile(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      ProfileScreen.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: (20 / 375) * size.width,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: (20 / 375) * size.width,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SearchField(size: size),
                IconBtnWithCounter(
                  size: size,
                  numOFitem: 3,
                  press: () => carts(context),
                  svgSrc: "assets/icons/cartIcon.svg",
                ),
                IconBtnWithCounter(
                  size: size,
                  press: () => profile(context),
                  svgSrc: "assets/icons/User.svg",
                ),
              ],
            ),
          ),
          SizedBox(
            height: (20 / 375) * size.width,
          ),
          Items()
        ],
      ),
    );
  }
}
