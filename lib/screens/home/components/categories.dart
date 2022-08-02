import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class Categoriess {
  final int id;
  final String icon;

  Categoriess({
    required this.id,
    required this.icon,
  });
}

class _CategoriesState extends State<Categories> {
  List<Categoriess> categories = [
    Categoriess(
      id: 1,
      icon: "assets/icons/All.svg",
    ),
    Categoriess(
      id: 1,
      icon: "assets/icons/armchair.svg",
    ),
    Categoriess(
      id: 1,
      icon: "assets/icons/lamp.svg",
    ),
    Categoriess(
      id: 1,
      icon: "assets/icons/sofa.svg",
    ),
    Categoriess(
      id: 1,
      icon: "assets/icons/wardrobe.svg",
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (ctx, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Container(
                  width: 70,
                  height: selectedIndex == index ? 1000 : 800,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: IconButton(
                    icon: SvgPicture.asset(
                      categories[index].icon,
                      color: selectedIndex == index
                          ? Colors.blueGrey[100]!.withOpacity(0.7)
                          : Color(0xff013b47),
                      cacheColorFilter: true,
                    ),
                    onPressed: () {},
                  ),
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? Color(0xff013b47)
                        : Colors.blueGrey[100]!.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(23),
                  ),
                ),
              ),
            );
          },
          shrinkWrap: true,
        ),
      ),
    );
  }
}
