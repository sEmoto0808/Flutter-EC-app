import 'package:flutter/material.dart';
import 'package:sample/utils/colors.dart';
import 'package:sample/widgets/home/food_carousel.dart';
import 'package:sample/widgets/icon_and_text_widget.dart';
import 'package:sample/widgets/large_text.dart';
import 'package:sample/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ヘッダー
          Container(
            margin: const EdgeInsets.only(top: 45, bottom: 15),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const LargeText(
                      text: 'Japan',
                      color: AppColors.mainColor,
                    ),
                    Row(
                      children: const [
                        SmallText(
                          text: 'Tokyo',
                          color: Colors.black54,
                        ),
                        Icon(Icons.arrow_drop_down_rounded),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const FoodCarousel(),
                  // list of food
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            // 画像
                            SizedBox(
                              width: 120,
                              height: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset('assets/images/food0.png'),
                              ),
                            ),
                            // テキスト
                            Expanded(
                              child: Container(
                                height: 100,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const LargeText(text: 'Nutritious fruit meal in China'),
                                      const SizedBox(height: 10),
                                      const SmallText(text: 'With chinese characteristics'),
                                      const SizedBox(height: 10),
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
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
