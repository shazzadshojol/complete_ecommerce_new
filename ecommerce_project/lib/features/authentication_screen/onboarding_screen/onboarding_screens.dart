import 'package:ecommerce_project/features/authentication_screen/onboarding_screen/widgets/NextButton.dart';
import 'package:ecommerce_project/features/authentication_screen/onboarding_screen/widgets/dot_navigation.dart';
import 'package:ecommerce_project/features/authentication_screen/onboarding_screen/widgets/onboarding_pages.dart';
import 'package:ecommerce_project/features/authentication_screen/onboarding_screen/widgets/skip_button.dart';
import 'package:ecommerce_project/utils/constants/app_text.dart';
import 'package:ecommerce_project/utils/constants/images_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  @override
  Widget build(BuildContext context) {
    final onBoardController = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: onBoardController.pageController,
            onPageChanged: onBoardController.updatePageIndicator,
            children: const [
              OnboardingPages(
                image: ImagesPath.onboarding1,
                title: AppText.onBoardingTitle1,
                subTitle: AppText.onBoardingSubTitle1,
              ),
              OnboardingPages(
                image: ImagesPath.onboarding2,
                title: AppText.onBoardingTitle2,
                subTitle: AppText.onBoardingSubTitle2,
              ),
              OnboardingPages(
                image: ImagesPath.onboarding3,
                title: AppText.onBoardingTitle3,
                subTitle: AppText.onBoardingSubTitle3,
              ),
            ],
          ),
          const SkipButton(),
          const DotNavigation(),
          const NextButton()
        ],
      ),
    );
  }
}
