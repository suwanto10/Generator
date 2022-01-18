import 'product.dart';

class Cart {
  final Product product;
  final int numOfItem;

  Cart({this.product, this.numOfItem});
}

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numOfItem: 2),
  Cart(product: demoProducts[1], numOfItem: 3),
  Cart(product: demoProducts[2], numOfItem: 1),
  Cart(product: demoProducts[0], numOfItem: 2),
  Cart(product: demoProducts[1], numOfItem: 3),
  Cart(product: demoProducts[2], numOfItem: 1),
  Cart(product: demoProducts[0], numOfItem: 2),
  Cart(product: demoProducts[1], numOfItem: 3),
  Cart(product: demoProducts[2], numOfItem: 1),
  Cart(product: demoProducts[0], numOfItem: 2),
  Cart(product: demoProducts[1], numOfItem: 3),
  Cart(product: demoProducts[2], numOfItem: 1),
];
