import 'package:ecommerce_project/features/authentication_screen/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      right: 10,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Colors.blue,
        ),
        child: const Icon(
          Icons.arrow_forward_ios,
        ),
      ),
    );
  }
}
