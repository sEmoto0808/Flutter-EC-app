import 'package:flutter/material.dart';
import 'package:sample/utils/colors.dart';

class FoodCarousel extends StatefulWidget {
  const FoodCarousel({Key? key}) : super(key: key);

  @override
  _FoodCarouselState createState() => _FoodCarouselState();
}

class _FoodCarouselState extends State<FoodCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          'assets/images/food0.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
