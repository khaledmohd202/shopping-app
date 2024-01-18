import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

class TopHeadLinesWidget extends StatelessWidget {
  const TopHeadLinesWidget({super.key, required this.topHeadLine});
  final String topHeadLine;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: Text(
        topHeadLine,
        style:const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}