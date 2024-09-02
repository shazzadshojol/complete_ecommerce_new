import 'package:ecommerce_project/common/widgets/rounded_card.dart';
import 'package:ecommerce_project/common/widgets/rounded_container.dart';
import 'package:ecommerce_project/common/widgets/rounded_images.dart';
import 'package:flutter/material.dart';

class BrandSlider extends StatelessWidget {
  const BrandSlider({
    super.key,
    required this.customColor,
    required this.images,
  });

  final Color customColor;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            RoundedCard(
              customColor: customColor,
              showBorder: false,
              onTap: () {},
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: images
                    .map((image) => _buildProductImages(image, context))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildProductImages(String image, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: Flexible(
        child: RoundedContainer(
          height: 100,
          width: 100,
          child: RoundedImage(
            fit: BoxFit.fill,
            imageUrl: image,
            applyImageRadius: true,
          ),
        ),
      ),
    );
  }
}
