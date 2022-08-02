import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/constants.dart';

import 'package:shopapp/providers/product.dart';
import 'package:shopapp/providers/products.dart';
import 'package:shopapp/screens/home/details/components/body.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detailScreen';

  @override
  Widget build(BuildContext context) {
    final itemId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedItem = Provider.of<Products>(
      context,
      listen: false,
    ).findById(itemId);
    return Scaffold(
      backgroundColor: selectedItem.firstColor,
      appBar: appbar(selectedItem, context),
      body: Body(
          selectedItem.id,
          selectedItem.subtitle,
          selectedItem.title,
          selectedItem.price,
          selectedItem.image,
          selectedItem.firstColor,
          selectedItem.secondColor,
          selectedItem.thirdColor,
          selectedItem.size,
          selectedItem.description),
    );
  }

  AppBar appbar(Product selectedItem, BuildContext context) {
    return AppBar(
      backgroundColor: selectedItem.firstColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        SizedBox(
          width: KdefaultPaddin / 2,
        )
      ],
    );
  }
}
