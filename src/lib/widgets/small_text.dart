import 'package:flutter/material.dart';
import 'package:sample/utils/colors.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final double size;
  final double lineSpacing;

  const SmallText({
    Key? key,
    required this.text,
    this.color = AppColors.textColor,
    this.size = 12,
    this.lineSpacing = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        height: lineSpacing,
        fontFamily: 'Roboto',
      ),
    );
  }
}
