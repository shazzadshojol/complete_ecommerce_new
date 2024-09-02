import 'package:ecommerce_project/common/widgets/brand_name_with_verify_icon.dart';
import 'package:ecommerce_project/common/widgets/circular_icons.dart';
import 'package:ecommerce_project/common/widgets/rounded_container.dart';
import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  RoundedCard({
    super.key,
    required this.customColor,
    required this.showBorder,
    required this.onTap,
    this.height,
    this.width,
  });

  final Color customColor;
  final bool showBorder;
  final VoidCallback onTap;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        height: height,
        width: width,
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            const CircularIcons(),
            const SizedBox(height: 10),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BrandWithVerifyIcon(customColor: customColor),
                const Text(
                  '200+ products',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
