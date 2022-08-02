import 'package:flutter/material.dart';
import 'package:shopapp/constants.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 40,
          height: 32,
          // ignore: deprecated_member_use
          child: OutlinedButton(
              onPressed: () {
                if (numOfItems > 1) {
                  setState(() {
                    numOfItems--;
                  });
                }
              },
              child: Icon(
                Icons.remove,
              ),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(13),
                    ),
                  ))),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KdefaultPaddin / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          width: 40,
          height: 32,
          // ignore: deprecated_member_use
          child: OutlinedButton(
              onPressed: () {
                setState(() {
                  numOfItems++;
                });
              },
              child: Icon(
                Icons.add,
              ),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(13),
                    ),
                  ))),
        ),
      ],
    );
  }
}
