import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppy/models/shop.dart';
import 'package:shoppy/pages/cart_page.dart';
import 'package:shoppy/pages/intro_page.dart';
import 'package:shoppy/pages/shop_page.dart';
import 'package:shoppy/themes/light_mode.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => Shop(),
  child: const MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
