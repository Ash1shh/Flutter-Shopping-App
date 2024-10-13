import 'package:flutter/material.dart';
import 'package:shoppy/models/product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: "Red Heart",
      price: 125669,
      description: "A red heart symbolizes deep love, passion, and affection, often used to express intense emotions. It's universally recognized as a symbol of romantic or close, heartfelt connections.",
      imagePath: 'assets/IMG_3925.jpg'
    ),
    Product(
      name: "Lighting",
      price: 4999,
      description: "Lighting illuminates spaces, enhances moods, and plays a crucial role in shaping atmosphere and perception.",
      imagePath: 'assets/IMG_3819.jpg'

    ),
    Product(
      name: "Black Heart",
      price: 215669,
      description: "A black heart symbolizes mystery, sorrow, or a deep, rebellious love, often conveying complex or unconventional emotions.",
      imagePath: 'assets/IMG_3926.jpg'

    ),
  ];

  final List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
