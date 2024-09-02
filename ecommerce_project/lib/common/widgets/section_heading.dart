import 'package:ecommerce_project/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

class SectionHeadings extends StatelessWidget {
  const SectionHeadings(
      {super.key,
      this.showActionButton = true,
      required this.title,
      this.buttonTitle = 'View All',
      this.onTap});

  final bool showActionButton;
  final String title, buttonTitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final customColor = Helpers.isItDark(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 20, color: customColor, fontWeight: FontWeight.w600),
        ),
        if (showActionButton)
          TextButton(
              onPressed: onTap,
              child: Text(
                buttonTitle,
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ))
      ],
    );
  }
}
