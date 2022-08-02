import 'package:flutter/material.dart';
import 'package:shopapp/constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    required this.firstColor,
    required this.secondColor,
    required this.thirdColor,
    required this.bro,
  });

  final Color firstColor;
  final Color secondColor;
  final Color thirdColor;
  final int bro;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
              Row(
                children: <Widget>[
                  ColorDot(color: firstColor, isselected: true),
                  ColorDot(
                    color: secondColor,
                  ),
                  ColorDot(
                    color: thirdColor,
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: KTextColor),
              children: [
                TextSpan(text: "Size\n"),
                TextSpan(
                  text: "$bro cm",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
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
            right: KdefaultPaddin / 2,
          ),
          padding: EdgeInsets.all(2.5),
          height: 24,
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
