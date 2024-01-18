import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/widgets/color_shoes_widget.dart';
import 'package:shopping_app/widgets/plus_and_minus_widget.dart';
import 'package:shopping_app/widgets/size_shoes_widget.dart';

class CustomArc extends StatelessWidget {
  const CustomArc({
    super.key,
    required this.colors,
  });

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Arc(
      edge: Edge.TOP,
      arcType: ArcType.CONVEY,
      height: 30,
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 40,
                  bottom: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Product Title',
                      style: TextStyle(
                        fontSize: 26,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: kPrimaryColor,
                      ),
                      onRatingUpdate: (value) {},
                    ),
                    const PlusAndMinusWidget(),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'This is more detailed description of the product. you can write here more about the product. this is lengthy description.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              const SizeShoesWidget(title: 'Size :'),
              ColorShoesWidget(colors: colors),
            ],
          ),
        ),
      ),
    );
  }
}
