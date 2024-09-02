import 'package:flutter/material.dart';

class CartCount extends StatelessWidget {
  const CartCount({
    super.key,
    required this.iconColor,
    required this.onTap,
  });

  final Color iconColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_bag,
            color: Colors.blue,
            size: 30,
          ),
        ),
        Positioned(
            right: 0,
            child: Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(100)),
              child: const Center(
                child: Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ))
      ],
    );
  }
}
