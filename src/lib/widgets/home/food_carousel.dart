import 'package:flutter/material.dart';
import 'package:sample/utils/colors.dart';
import 'package:sample/widgets/icon_and_text_widget.dart';
import 'package:sample/widgets/large_text.dart';
import 'package:sample/widgets/small_text.dart';

class FoodCarousel extends StatefulWidget {
  const FoodCarousel({Key? key}) : super(key: key);

  @override
  _FoodCarouselState createState() => _FoodCarouselState();
}

class _FoodCarouselState extends State<FoodCarousel> {
  /// [PageView]のコントローラ
  final _pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          width: double.maxFinite,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              'assets/images/food0.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            width: double.maxFinite,
            margin: const EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 30,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 10,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LargeText(text: 'Chinese Side'),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => const Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                            size: 15,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const SmallText(text: '4.5'),
                      const SizedBox(width: 10),
                      const SmallText(text: '1287'),
                      const SizedBox(width: 10),
                      const SmallText(text: 'comments'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      IconAndTextWidget(
                        icon: Icons.circle_sharp,
                        text: 'Normal',
                        iconColor: AppColors.iconColor1,
                      ),
                      IconAndTextWidget(
                        icon: Icons.location_on,
                        text: '1.7km',
                        iconColor: AppColors.mainColor,
                      ),
                      IconAndTextWidget(
                        icon: Icons.access_time_rounded,
                        text: '32min',
                        iconColor: AppColors.iconColor2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
