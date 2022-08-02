import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/constants.dart';
import 'package:shopapp/screens/home/details/details_screen.dart';
import 'package:shopapp/providers/product.dart';

class CategoryItem extends StatelessWidget {
  void selectedItem(BuildContext ctx) {}

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          DetailScreen.routeName,
          arguments: product.id,
        );
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Hero(
                      tag: product.id,
                      child: Image.asset(
                        product.image,
                        fit: BoxFit.contain,
                        height: 100,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Consumer<Product>(
                    builder: (ctx, product, _) => IconButton(
                      icon: Icon(
                        product.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.black12,
                      ),
                      onPressed: () {
                        product.toggleFavoriteStatus();
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                product.title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColorDot(
                    color: product.firstColor,
                    isselected: true,
                  ),
                  ColorDot(
                    color: product.secondColor,
                  ),
                  ColorDot(
                    color: product.thirdColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    '\$${product.price}',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 23,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Color(0xff013b47),
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                color: Color(0x33757575),
              )
            ]),
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isselected;
  const ColorDot({
    required this.color,
    this.isselected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: KdefaultPaddin / 4,
            right: 0.1,
          ),
          padding: EdgeInsets.all(2.5),
          height: 20,
          width: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: isselected ? color : Colors.transparent,
            ),
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
