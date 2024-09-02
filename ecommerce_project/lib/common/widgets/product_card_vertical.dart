import 'package:ecommerce_project/common/widgets/brand_name_with_verify_icon.dart';
import 'package:ecommerce_project/common/widgets/product_title_text.dart';
import 'package:ecommerce_project/common/widgets/rounded_container.dart';
import 'package:ecommerce_project/common/widgets/rounded_images.dart';
import 'package:ecommerce_project/utils/constants/images_path.dart';
import 'package:ecommerce_project/utils/helpers/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final customColor = Helpers.isItDark(context);

    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          RoundedContainer(
            child: Column(
              children: [
                Stack(
                  children: [
                    const SizedBox(
                      width: double.maxFinite,
                      height: 100,
                      child: RoundedImage(
                        imageUrl: ImagesPath.slider5,
                        applyImageRadius: true,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 12,
                      left: 10,
                      child: RoundedContainer(
                        height: 25,
                        width: 40,
                        radius: 10,
                        backgroundColor: Colors.yellow,
                        child: Center(
                          child: Text(
                            '20%',
                            style: TextStyle(color: customColor),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 12,
                      right: 10,
                      child: RoundedContainer(
                        backgroundColor: Colors.transparent,
                        height: 25,
                        width: 40,
                        radius: 10,
                        child: Icon(
                          CupertinoIcons.heart_solid,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductText(
                    title: 'Grey Nike Air Shoes for you',
                  ),
                  BrandWithVerifyIcon(customColor: customColor),
                  const SizedBox(height: 5),
                  const Text(
                    '\$30.5',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
