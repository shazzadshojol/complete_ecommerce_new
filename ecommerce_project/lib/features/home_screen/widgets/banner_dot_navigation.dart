import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerDotNavigation extends StatelessWidget {
  final int currentIndex;
  final CarouselSliderController carouselController;

  const BannerDotNavigation({
    super.key,
    required this.currentIndex,
    required this.carouselController,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SmoothPageIndicator(
      controller: PageController(initialPage: currentIndex),
      count: 3,
      effect: const ExpandingDotsEffect(
        activeDotColor: Colors.blue,
        dotHeight: 6,
      ),
      onDotClicked: (index) {
        carouselController.animateToPage(index);
      },
    );
  }
}
