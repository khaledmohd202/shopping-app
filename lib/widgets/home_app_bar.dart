import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});
  final int value = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          children: [
            const Icon(
              Icons.sort,
              size: 30,
              color: kPrimaryColor,
            ),
            const Text(
              'DP Shop',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            const Spacer(),
            Badge(
              offset: const Offset(8, -2),
              backgroundColor: Colors.red,
              padding: const EdgeInsets.all(7),
              label: Text(
                '$value',
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
              largeSize: 25,
              // smallSize: 30,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'cartPage');
                },
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 32,
                  color: kPrimaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
