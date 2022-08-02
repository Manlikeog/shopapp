import 'package:shopapp/dummy_data.dart';
import '../providers/product.dart';

class Cart {
  final Product product;
  final int numOfItems;

  Cart({
    required this.product,
    required this.numOfItems,
  });
}

List<Cart> demoCarts = [
  Cart(product: dummyProduct[0], numOfItems: 2),
  Cart(product: dummyProduct[1], numOfItems: 1),
  Cart(product: dummyProduct[3], numOfItems: 1)
];
