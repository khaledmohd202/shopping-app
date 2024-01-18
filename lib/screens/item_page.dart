import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/widgets/custom_app_bar.dart';
import 'package:shopping_app/widgets/custom_arc.dart';
import 'package:shopping_app/widgets/item_bottom_nav_bar.dart';


class ItemPage extends StatelessWidget {
  ItemPage({super.key});
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.orange,
    Colors.white,
    Colors.black,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kShadowColor,
      body: ListView(
        children: [
          const CustomAppBar(
            title: 'Product',
            icon: Icons.favorite,
            color: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              'assets/images/1.png',
              height: 250,
            ),
          ),
          CustomArc(colors: colors),
        ],
      ),
      bottomNavigationBar: const  ItemBottomNavBar(),
    );
  }
}
