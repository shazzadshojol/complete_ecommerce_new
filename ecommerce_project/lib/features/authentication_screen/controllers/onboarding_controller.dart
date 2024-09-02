import 'package:ecommerce_project/features/authentication_screen/login_signup/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPage = 0.obs;

  // Update the page indicator by changing the value of currentPage
  void updatePageIndicator(int index) {
    currentPage.value = index;
  }

  // Navigate to a specific dot and update the page controller
  void dotNavigation(int index) {
    currentPage.value = index;
    pageController.jumpToPage(index);
  }

  // Navigate to the next page or to the LoginScreen if on the last page
  void nextPage() {
    if (currentPage.value == 2) {
      Get.to(() => const LoginScreen());
    } else {
      int page = currentPage.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Skip to the last page
  void skipPage() {
    Get.to(() => const LoginScreen());
  }
}
