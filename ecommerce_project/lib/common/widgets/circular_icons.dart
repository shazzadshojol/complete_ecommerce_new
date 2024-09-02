import 'package:flutter/material.dart';

class CircularIcons extends StatelessWidget {
  const CircularIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Icon(
        Icons.shopping_bag,
        size: 30,
        color: Colors.blue,
      ),
    );
  }
}
