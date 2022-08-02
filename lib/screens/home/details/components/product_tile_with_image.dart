import 'package:flutter/material.dart';
import 'package:shopapp/constants.dart';

class ProductTileWithImage extends StatelessWidget {
  const ProductTileWithImage({
    required this.id,
    required this.description,
    required this.title,
    required this.price,
    required this.image,
  });

  final String id;
  final String description;
  final String title;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: KdefaultPaddin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: KdefaultPaddin,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Price\n",
                    ),
                    TextSpan(
                      text: '\$$price',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: KdefaultPaddin),
              Expanded(
                child: Hero(
                  tag: id,
                  child: Image.asset(
                    image,
                    fit: BoxFit.contain,
                    height: 240,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
