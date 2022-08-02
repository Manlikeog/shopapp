// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.size,
    required this.svgSrc,
    this.numOFitem = 0,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String svgSrc;
  final int numOFitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all((12 / 375) * size.width),
            height: (46 / 375) * size.width,
            width: (46 / 375) * size.width,
            decoration: BoxDecoration(
              color: Color(0xFF979797).withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOFitem != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: (16 / 375) * size.width,
                width: (16 / 375) * size.width,
                decoration: BoxDecoration(
                  color: Color(0xff013b47),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numOFitem",
                    style: TextStyle(
                      fontSize: (10 / 375) * size.width,
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
