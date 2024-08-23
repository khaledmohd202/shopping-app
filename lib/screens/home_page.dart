import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/widgets/categories_widget.dart';
import 'package:shopping_app/widgets/curved_bottom_navigation_bar_widget.dart';
import 'package:shopping_app/widgets/home_app_bar.dart';
import 'package:shopping_app/widgets/items_widget.dart';
import 'package:shopping_app/widgets/search_widget.dart';
import 'package:shopping_app/widgets/top_head_lines_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
            // height: 500, //not a final value
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: kShadowColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: const Column(
              children: [
                //Search Widget
                SearchWidget(),
                // Categories
                TopHeadLinesWidget(topHeadLine: 'Categories'),
                // Categories Widget
                CategoriesWidget(),
                // Items
                TopHeadLinesWidget(topHeadLine: 'Best Selling'),
                //Items Widget
                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:const CurvedBottomNavigationBarWidget(),
    );
  }
}
