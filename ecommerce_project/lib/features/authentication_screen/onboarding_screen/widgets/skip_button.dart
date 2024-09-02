import 'package:ecommerce_project/features/authentication_screen/controllers/onboarding_controller.dart';
import 'package:ecommerce_project/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 50,
        right: 10,
        child: TextButton(
            onPressed: () => OnboardingController.instance.skipPage(),
            child: Text(
              'Skip',
              style: TextStyle(
                  fontSize: 16,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w700),
            )));
  }
}
