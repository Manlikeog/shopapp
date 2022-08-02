import 'package:flutter/material.dart';

import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: '1',
      subtitle: "Fancy Lamp",
      price: "600",
      size: 19,
      title: "Lamp",
      image: "assets/images/fancy.png",
      firstColor: Color(0xffc0c0c0),
      secondColor: Colors.brown.shade700,
      thirdColor: Colors.black,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '2',
      subtitle: "Pendant Lamp",
      price: "600",
      size: 19,
      title: "Lamp",
      image: "assets/images/pendant.png",
      firstColor: Color(0xffffe4e1),
      secondColor: Colors.black,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '3',
      subtitle: "Transparent Stool",
      price: "600",
      size: 19,
      title: "Stool",
      image: "assets/images/transparent-stool.png",
      firstColor: Colors.black26,
      secondColor: Colors.brown.shade700,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '4',
      subtitle: "Touco Armchair",
      price: "600",
      size: 19,
      title: "Arm-Chair",
      image: "assets/images/toucoarmchair.PNG",
      firstColor: Color(0xff013b47),
      secondColor: Colors.brown.shade700,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '5',
      subtitle: "Dolkie Lamp",
      price: "450",
      size: 12,
      title: "Lamp",
      image: "assets/images/dolkielamp.PNG",
      firstColor: Colors.black,
      secondColor: Colors.brown.shade500,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '6',
      subtitle: "Polazzo Armchair",
      price: "300",
      size: 17,
      title: "Arm-Chair",
      image: "assets/images/polazzoarmchair.PNG",
      firstColor: Color(0xeea0522d),
      secondColor: Colors.brown.shade100,
      thirdColor: Color(0xff013b47),
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '7',
      subtitle: "Bar Stool",
      price: "600",
      size: 19,
      title: "Stool",
      image: "assets/images/bar.png",
      firstColor: Colors.black,
      secondColor: Colors.brown.shade800,
      thirdColor: Colors.white,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '8',
      subtitle: "Chandelier",
      price: "600",
      size: 19,
      title: "Chandelier",
      image: "assets/images/chandelier.png",
      firstColor: Colors.black,
      secondColor: Colors.white70,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '9',
      subtitle: "Copper Chandelier",
      price: "600",
      size: 19,
      title: "Chandelier",
      image: "assets/images/copper.png",
      firstColor: Colors.black,
      secondColor: Colors.white70,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '10',
      subtitle: "Eglo Lamp",
      price: "600",
      size: 19,
      title: "Lamp",
      image: "assets/images/eglo.png",
      firstColor: Colors.black,
      secondColor: Colors.brown.shade500,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '11',
      subtitle: "Ied Lamp",
      price: "600",
      size: 19,
      title: "Lamp",
      image: "assets/images/iedlamp.png",
      firstColor: Color(0xffa9a9a9),
      secondColor: Colors.black,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '12',
      subtitle: "Night Stand",
      price: "600",
      size: 19,
      title: "Lamp",
      image: "assets/images/nightstand.png",
      firstColor: Colors.black,
      secondColor: Colors.brown.shade700,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '13',
      subtitle: "Crystal Chandelier",
      price: "600",
      size: 19,
      title: "Chandelier",
      image: "assets/images/crystal.png",
      firstColor: Color(0xffe6be8a),
      secondColor: Colors.black,
      thirdColor: Colors.white,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '14',
      subtitle: "Pendentive Lamp",
      price: "600",
      size: 19,
      title: "Lamp",
      image: "assets/images/pendentive.png",
      firstColor: Colors.black,
      secondColor: Colors.brown.shade700,
      thirdColor: Color(0xffffdead),
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '15',
      subtitle: "Red Sofa",
      price: "600",
      size: 19,
      title: "Sofa",
      image: "assets/images/red.png",
      firstColor: Color(0xbbb31329),
      secondColor: Colors.brown.shade700,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '16',
      subtitle: "Silver Sofa",
      price: "600",
      size: 19,
      title: "Sofa",
      image: "assets/images/silver.png",
      firstColor: Colors.black26,
      secondColor: Colors.brown.shade700,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '17',
      subtitle: "Silver Base Chandelier",
      price: "600",
      size: 19,
      title: "Chandelier",
      image: "assets/images/silverbase.png",
      firstColor: Colors.black26,
      secondColor: Colors.brown.shade700,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '18',
      subtitle: "Transparent Lamp",
      price: "600",
      size: 19,
      title: "Lamp",
      image: "assets/images/transparent.png",
      firstColor: Colors.black26,
      secondColor: Colors.brown.shade700,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '19',
      subtitle: "White Sofa",
      price: "600",
      size: 19,
      title: "Sofa",
      image: "assets/images/white.png",
      firstColor: Colors.black26,
      secondColor: Colors.brown.shade700,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '20',
      subtitle: "Wooden Stool",
      price: "600",
      size: 19,
      title: "Stool",
      image: "assets/images/wooden.png",
      firstColor: Colors.black26,
      secondColor: Colors.brown.shade700,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '21',
      subtitle: "Yellow Armchair",
      price: "600",
      size: 19,
      title: "Armchair",
      image: "assets/images/yellow.png",
      firstColor: Colors.black26,
      secondColor: Colors.brown.shade700,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
    Product(
      id: '22',
      subtitle: "Zeb Bar Stool",
      price: "600",
      size: 19,
      title: "Stool",
      image: "assets/images/zeb-bar.png",
      firstColor: Colors.black26,
      secondColor: Colors.brown.shade700,
      thirdColor: Colors.transparent,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
