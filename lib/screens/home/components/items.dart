import 'package:flutter/material.dart';

import 'package:shopapp/providers/products.dart';
import 'package:shopapp/widgets/catergory_item.dart';

import 'package:provider/provider.dart';

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: GridView.builder(
          itemCount: products.length,
          itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
            value: products[i],
            child: CategoryItem(),
          ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisExtent: 230,
            crossAxisSpacing: 15,
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 15,
          ),
          shrinkWrap: true,
        ),
      ),
    );
  }
}
