import 'package:flutter/material.dart';

class FoodDetailPage extends StatelessWidget {
  const FoodDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: 350,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/food0.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Text('aaaBBBBBB'),
      ),
    );
  }
}
