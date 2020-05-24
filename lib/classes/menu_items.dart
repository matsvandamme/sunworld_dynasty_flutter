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

  final List<MenuItem> foodList = [
    MenuItem(
      type: "food",
      name: "Indian-Style Beef Curry and Coconut Milk with Rice",
      price: 380,
      imageNumber: 1,
    ),
    MenuItem(
      type: "food",
      name: "Chef's Daily Soup",
      price: 220,
      imageNumber: 2,
    ),
    MenuItem(
      type: "food",
      name: "Malaysian Chicken Curry with Rice",
      price: 360,
      imageNumber: 3,
    ),
    MenuItem(
      type: "food",
      name: "Homemade Beef Burger",
      price: 410,
      imageNumber: 4,
    ),
    MenuItem(
      type: "food",
      name: "Fried Noodles in Taiwanese Style",
      price: 350,
      imageNumber: 5,
    ),
    MenuItem(type: "food", name: "Bolognese", price: 360, imageNumber: 6),
    MenuItem(
      type: "food",
      name: "Seafood Spaghetti Baked with Cheese",
      price: 410,
      imageNumber: 7,
    ),
    MenuItem(
      type: "food",
      name: "Garden Salad with Caramelized Apple and Pecan Nuts",
      price: 380,
      imageNumber: 8,
    ),
    MenuItem(
      type: "food",
      name: "Wonton in Authentic Red Chili Oil with Noodles",
      price: 320,
      imageNumber: 9,
    ),
    MenuItem(
      type: "food",
      name: "Beef Noodle Soup",
      price: 380,
      imageNumber: 10,
    ),
    MenuItem(
      type: "food",
      name: "Fried Rice in Taiwanese Style",
      price: 350,
      imageNumber: 11,
    ),
    MenuItem(
      type: "food",
      name: "Smoked Salmon Sandwich",
      price: 300,
      imageNumber: 12,
    ),
    MenuItem(
      type: "food",
      name: "Dynasty Fried Drumstick Rice",
      price: 360,
      imageNumber: 13,
    ),
    MenuItem(
      type: "food",
      name: "Garden Vegetable Sandwich",
      price: 280,
      imageNumber: 14,
    ),
    MenuItem(
      type: "food",
      name: "Seasonal Fresh Fruit Plate",
      price: 320,
      imageNumber: 15,
    ),
    MenuItem(
      type: "food",
      name: "Chef's Salad",
      price: 380,
      imageNumber: 16,
    ),];

final List<MenuItem> dessertList = [
    MenuItem(
      type: "dessert",
      name: "Classic Baked Cheesecake with Strawberry Topping",
      price: 180,
      imageNumber: 1,
    ),
    MenuItem(
      type: "dessert",
      name: "French Dessert Set",
      price: 200,
      imageNumber: 2,
    ),];

final List<MenuItem> drinkList = [
    MenuItem(
      type: "drink",
      name: "Regular Coffee",
      price: 180,
      imageNumber: 1,
    ),
    MenuItem(
      type: "drink",
      name: "Decaffeinated Coffee",
      price: 180,
      imageNumber: 2,
    ),
    MenuItem(
      type: "drink",
      name: "Espresso",
      price: 180,
      imageNumber: 2,
    ),
    MenuItem(
      type: "drink",
      name: "Cappuccino",
      price: 180,
      imageNumber: 3,
    ),
    MenuItem(
      type: "drink",
      name: "Latte",
      price: 180,
      imageNumber: 4,
    ),
    MenuItem(
      type: "drink",
      name: "Oolong Tea",
      price: 180,
      imageNumber: 5,
    ),
    MenuItem(
      type: "drink",
      name: "Jasmine Tea",
      price: 180,
      imageNumber: 5,
    ),
    MenuItem(
      type: "drink",
      name: "Ceylon Tea",
      price: 180,
      imageNumber: 5,
    ),
    MenuItem(
      type: "drink",
      name: "Darjeeling Tea",
      price: 180,
      imageNumber: 5,
    ),
    MenuItem(
      type: "drink",
      name: "Earl Grey Tea",
      price: 180,
      imageNumber: 5,
    ),
    MenuItem(
      type: "drink",
      name: "Orange Juice",
      price: 180,
      imageNumber: 6,
    ),
    MenuItem(
      type: "drink",
      name: "Grapefruit Juice",
      price: 180,
      imageNumber: 7,
    ),
    MenuItem(
      type: "drink",
      name: "Lemon Juice",
      price: 180,
      imageNumber: 8,
    ),
    MenuItem(
      type: "drink",
      name: "Kiwi Juice",
      price: 180,
      imageNumber: 9,
    ),
    MenuItem(
      type: "drink",
      name: "Taiwan Gold Draft Beer (600ml)",
      price: 180,
      imageNumber: 10,
    ),
    MenuItem(
      type: "drink",
      name: "Kirin Beer",
      price: 180,
      imageNumber: 11,
    ),
    MenuItem(
      type: "drink",
      name: "Asahi Beer",
      price: 180,
      imageNumber: 12,
    ),
    MenuItem(
      type: "drink",
      name: "Heineken Beer",
      price: 180,
      imageNumber: 13,
    ),
    MenuItem(
      type: "drink",
      name: "Corona Beer",
      price: 180,
      imageNumber: 14,
    ),
    MenuItem(
      type: "drink",
      name: "Red House Wine (750ml)",
      price: 850,
      imageNumber: 15,
    ),
    MenuItem(
      type: "drink",
      name: "White House Wine (750ml)",
      price: 850,
      imageNumber: 16,
    ),
    MenuItem(
      type: "drink",
      name: "Acqua Filette Natural Mineral Water",
      price: 200,
      imageNumber: 17,
    ),
    MenuItem(
      type: "drink",
      name: "Acqua Filette Sparkling Mineral Water",
      price: 200,
      imageNumber: 18,
    ),
  ];

