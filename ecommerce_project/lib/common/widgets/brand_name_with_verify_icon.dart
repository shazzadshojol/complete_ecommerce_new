import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrandWithVerifyIcon extends StatelessWidget {
  const BrandWithVerifyIcon({
    super.key,
    required this.customColor,
  });

  final Color customColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Nike',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 10, color: customColor),
        ),
        const SizedBox(width: 4),
        const Icon(
          CupertinoIcons.bolt_circle_fill,
          color: Colors.blue,
          size: 10,
        ),
      ],
    );
  }
}
