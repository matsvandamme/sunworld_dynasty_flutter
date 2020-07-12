import 'package:meta/meta.dart';

class CartItem {
  final String type;
  final String name;
  final double index;
  final int imageNumber;

  CartItem({
    @required this.type,
    @required this.name,
    @required this.index,
    @required this.imageNumber,
  });
}

final List<CartItem> CartList = [];
