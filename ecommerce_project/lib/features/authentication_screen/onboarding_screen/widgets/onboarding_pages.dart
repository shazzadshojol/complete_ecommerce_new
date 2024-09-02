import 'package:ecommerce_project/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

class OnboardingPages extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const OnboardingPages({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    final customColor = Helpers.isItDark(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          const Spacer(),
          Image.network(
            image,
            height: 350,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w600, color: customColor),
          ),
          const SizedBox(height: 10),
          Text(
            subTitle,
            style: TextStyle(fontSize: 18, color: customColor),
            textAlign: TextAlign.center,
          ),
          const Spacer()
        ],
      ),
    );
  }
}
