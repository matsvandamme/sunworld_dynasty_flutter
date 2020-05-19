import 'package:meta/meta.dart';

class MenuItem {
  final String type;
  final String name;
  final double price;
  final int imageNumber;

  MenuItem({
    @required this.type,
    @required this.name,
    @required this.price,
    @required this.imageNumber,
  });
}

List<MenuItem> foodList = [
  MenuItem(type: "food", name: "Indian-Style Beef Curry and Coconut Milk with Rice", price: 380, imageNumber: 1),
  MenuItem(type: "food", name: "Chef's Daily Soup", price: 220, imageNumber: 2),
  MenuItem(type: "food", name: "Malaysian Chicken Curry with Rice", price: 360, imageNumber: 3),
  MenuItem(type: "food", name: "Homemade Beef Burger", price: 410, imageNumber: 4),
  MenuItem(type: "food", name: "Fried Noodles in Taiwanese Style", price: 350, imageNumber: 5),
  MenuItem(type: "food", name: "Bolognese", price: 360, imageNumber: 6),
  MenuItem(type: "food", name: "Seafood Spaghetti Baked with Cheese", price: 410, imageNumber: 7),
  MenuItem(type: "food", name: "Garden Salad with Caramelized Apple and Pecan Nuts", price: 380, imageNumber: 8),
  MenuItem(type: "food", name: "Wonton in Authentic Red Chili Oil with Noodles", price: 320, imageNumber: 9),
  MenuItem(type: "food", name: "Beef Noodle Soup", price: 380, imageNumber: 10),
  MenuItem(type: "food", name: "Fried Rice in Taiwanese Style", price: 350, imageNumber: 11),
  MenuItem(type: "food", name: "Smoked Salmon Sandwich", price: 300, imageNumber: 12),
  MenuItem(type: "food", name: "Dynasty Fried Drumstick Rice", price: 360, imageNumber: 13),
  MenuItem(type: "food", name: "Garden Vegetable Sandwich", price: 280, imageNumber: 14),
  MenuItem(type: "food", name: "Seasonal Fresh Fruit Plate", price: 320, imageNumber: 15),
  MenuItem(type: "food", name: "Chef's Salad", price: 380, imageNumber: 16),
];
