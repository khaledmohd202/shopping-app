import 'package:flutter/material.dart';
import 'package:shopping_app/screens/cart_page/cart_page.dart';
import 'package:shopping_app/screens/home_page.dart';
import 'package:shopping_app/screens/item_page.dart';
import 'package:shopping_app/screens/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        '/': (context) => const HomePage(),
        'cartPage': (context) => const CartPage(),
        'itemPage': (context) => ItemPage(),
        'settingsPage':(context) => const SettingsPage(),
      },
    );
  }
}
