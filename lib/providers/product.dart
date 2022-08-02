import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String image;
  final String title;
  final String description;
  final String price;
  final String subtitle;
  final int size;
  final String id;
  final Color firstColor;
  final Color secondColor;
  final Color thirdColor;
  bool isFavorite;

  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.subtitle,
    required this.size,
    required this.id,
    required this.firstColor,
    required this.secondColor,
    required this.thirdColor,
    this.isFavorite = false,
  });

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
