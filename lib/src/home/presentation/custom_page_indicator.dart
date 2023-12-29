import 'package:bund/src/core/utility/consts.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 4,
      effect: const ScrollingDotsEffect(
        fixedCenter: true,
        dotColor: light,
        activeDotColor: bundMain,
        dotHeight: 8,
        dotWidth: 8,
        strokeWidth: 0,
        activeDotScale: 0,
      ),
    );
  }
}
