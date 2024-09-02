import 'package:ecommerce_project/features/authentication_screen/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotNavigation extends StatelessWidget {
  const DotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
        bottom: 20,
        right: 160,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigation,
          count: 3,
          effect:
              ExpandingDotsEffect(activeDotColor: Colors.blue, dotHeight: 6),
        ));
  }
}
