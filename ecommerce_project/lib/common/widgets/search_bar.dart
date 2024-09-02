import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final bool showBackground, showBorder;
  final Icon icon;
  final String text;

  const MySearchBar({
    super.key,
    required this.icon,
    required this.text,
    required this.showBackground,
    required this.showBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 60,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blue),
      ),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
