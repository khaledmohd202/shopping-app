import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      required this.icon,
      required this.color});
  final String title;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: kPrimaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: Icon(
              icon,
              size: 30,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
