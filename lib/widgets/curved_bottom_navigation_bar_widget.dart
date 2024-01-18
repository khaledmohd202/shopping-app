import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

class CurvedBottomNavigationBarWidget extends StatelessWidget {
  const CurvedBottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 65,
      color: kPrimaryColor,
      onTap: (index) {},
      backgroundColor: Colors.transparent,
      items: [
        InkWell(
          onTap: () {
            // Navigator.pushNamed(context, 'homePage');
          },
          child: InkWell(
            onTap: () {},
            child: const Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'cartPage');
          },
          child: const Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'settingsPage');
          },
          child:const Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
