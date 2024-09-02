import 'package:ecommerce_project/common/widgets/category_circular_buttons.dart';
import 'package:ecommerce_project/utils/constants/images_path.dart';
import 'package:flutter/material.dart';

class CategoryImageButtons extends StatelessWidget {
  const CategoryImageButtons({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return CategoryCircularButtons(
            color: color,
            image: ImagesPath.popularCategory,
            title: 'Shoes',
            backgroundColor: Colors.amber,
            onTap: () {},
          );
        },
      ),
    );
  }
}
